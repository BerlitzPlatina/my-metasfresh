package de.metas.migration.executor.impl;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Set;
import java.util.stream.Collectors;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.google.common.base.Joiner;
import com.google.common.base.Stopwatch;
import com.google.common.collect.ImmutableList;
import com.google.common.collect.ImmutableSet;

import de.metas.migration.IDatabase;
import de.metas.migration.IScript;
import de.metas.migration.exception.ScriptExecutionException;
import de.metas.migration.executor.IScriptExecutor;
import de.metas.migration.impl.AnonymousScript;
import de.metas.migration.impl.SQLDatabase;
import de.metas.migration.impl.SQLHelper;
import lombok.Builder;
import lombok.NonNull;
import lombok.Value;

public class PostgresqlNativeExecutor implements IScriptExecutor {
	private static final Logger logger = LoggerFactory.getLogger(PostgresqlNativeExecutor.class);

	private static final String AFTER_MIGRATION_FUNC_PATTERN = "after_migration%";

	private final IDatabase database;
	private final SQLHelper sqlHelper;

	public PostgresqlNativeExecutor(@NonNull final IDatabase database) {
		this.database = database;
		this.sqlHelper = new SQLHelper(SQLDatabase.cast(database));
	}

	@Override
	public void execute(final IScript script) {
		try (Connection conn = getConnection(); Statement stmt = conn.createStatement()) {
			String sql = readFile(script.getLocalFile());
			stmt.execute(sql);
		} catch (Exception e) {
			throw new ScriptExecutionException("Error executing script", e)
					.setDatabase(database)
					.setScript(script)
					.setExecutor(this);
		}
	}

	@Override
	public void executeAfterScripts() {
		final Set<String> functionNames = sqlHelper.getDBFunctionsMatchingPattern(AFTER_MIGRATION_FUNC_PATTERN)
				.stream()
				.sorted()
				.collect(ImmutableSet.toImmutableSet());

		if (functionNames.isEmpty()) {
			logger.warn(
					"Skip executing after migration scripts because no function matching pattern '{}' was found in {}",
					AFTER_MIGRATION_FUNC_PATTERN, database);
			return;
		}

		final AnonymousScript script = AnonymousScript.builder()
				.fileName("after_migration.sql")
				.scriptContent(functionNames.stream()
						.map(fn -> "SELECT " + fn + "();")
						.collect(Collectors.joining("\n")))
				.build();

		final Stopwatch stopwatch = Stopwatch.createStarted();
		execute(script);
		stopwatch.stop();

		logger.info("Executed {} in {}ms", functionNames, stopwatch);
	}

	private Connection getConnection() throws SQLException {
		final String url = "jdbc:postgresql://" + database.getDbHostname() + ":" + database.getDbPort() + "/"
				+ database.getDbName();
		return DriverManager.getConnection(url, database.getDbUser(), database.getDbPassword());
	}

	private String readFile(File file) throws Exception {
		try (BufferedReader reader = new BufferedReader(new FileReader(file))) {
			StringBuilder sb = new StringBuilder();
			String line = reader.readLine();

			// Remove BOM if present
			if (line != null && line.startsWith("\uFEFF")) {
				line = line.substring(1);
			}

			while (line != null) {
				sb.append(line).append("\n");
				line = reader.readLine();
			}

			return sb.toString();
		}
	}

	@Builder
	@Value
	private static class ScriptExecutionResult {
		@NonNull
		final ImmutableList<String> logTail;
	}
}
