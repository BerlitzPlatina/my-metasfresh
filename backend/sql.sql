SET extra_float_digits = 3;

SET application_name = 'PostgreSQL JDBC Driver';

SET client_min_messages=WARNING;

SET application_name = 'metasfresh';

SHOW TRANSACTION ISOLATION LEVEL;

SET application_name = 'metasfresh/checked-out-from-pool';

SET SESSION CHARACTERISTICS AS TRANSACTION ISOLATION LEVEL READ COMMITTED;

SET application_name = 'metasfresh/returned-to-pool';

SELECT AD_Language FROM AD_Language WHERE IsBaseLanguage='Y';

SELECT t.TableName, c.ColumnName, c.AD_Reference_ID, c.IsMandatory, c.IsUpdateable, c.DefaultValue, e.Name, e.Description, c.AD_Column_ID, c.IsKey,c.IsParent, c.AD_Reference_Value_ID, vr.Code, c.FieldLength, c.ValueMin, c.ValueMax, c.IsTranslated,t.AccessLevel,c.ColumnSQL,c.IsEncrypted ,c.IsAllowLogging,t.IsChangeLog ,c.IsLazyLoading ,c.IsCalculated ,c.AD_Val_Rule_ID ,t.AD_Table_ID ,c.IsUseDocSequence,c.IsStaleable,c.IsSelectionColumn,t.IsView, rt_table.TableName AS AD_Reference_Value_TableName, rt_keyColumn.AD_Reference_ID AS AD_Reference_Value_KeyColumn_DisplayType, t.WEBUI_View_PageLength,c.AD_Sequence_ID, t.CloningEnabled, t.DownlineCloningStrategy, t.WhenChildCloningStrategy, c.CloningStrategy AS columnCloningStrategy, c.IsIdentifier AS columnIsIdentifier FROM AD_Table t  INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID)  LEFT OUTER JOIN AD_Val_Rule vr ON (c.AD_Val_Rule_ID=vr.AD_Val_Rule_ID)  INNER JOIN AD_Element e ON (c.AD_Element_ID=e.AD_Element_ID)  LEFT OUTER JOIN AD_Ref_Table rt ON (rt.AD_Reference_ID=c.AD_Reference_Value_ID) LEFT OUTER JOIN AD_Table rt_table on (rt_table.AD_Table_ID=rt.AD_Table_ID) LEFT OUTER JOIN AD_Column rt_keyColumn on (rt_keyColumn.AD_Column_ID=rt.AD_Key) WHERE t.IsActive='Y' AND c.IsActive='Y' ORDER BY t.TableName, c.ColumnName;

SELECT AD_Client_ID,AD_Org_ID,AD_System_ID,Created,CreatedBy,CustomPrefix,DBAddress,DBInstance,DBVersion,Description,EncryptionKey,IDRangeEnd,IDRangeStart,Info,IsActive,IsAllowStatistics,IsAutoErrorReport,IsFailOnBuildDiffer,IsFailOnMissingModelValidator,IsJustMigrated,LastBuildInfo,Name,NoProcessors,OldName,Password,Processing,ProfileInfo,Record_ID,ReleaseNo,ReplicationType,StatisticsInfo,Summary,SupportEMail,SupportExpDate,SupportUnits,SystemStatus,Updated,UpdatedBy,UserName,Version,WebUI_URL  FROM AD_System WHERE (1=1);

SELECT AD_Table_ID, TableName, EntityType, TooltipType FROM AD_Table;

SELECT * FROM AD_EntityType WHERE IsActive='Y' ORDER BY AD_EntityType_ID;

SELECT AD_Client_ID,AD_Language,AD_Org_ID,AD_ReplicationStrategy_ID,AutoArchive,Created,CreatedBy,Description,DocumentDir,EMailTest,IsActive,IsCostImmediate,IsMultiLingualDocument,IsPostImmediate,IsServerEMail,IsSmtpAuthorization,IsStartTLS,IsUseBetaFunctions,MMPolicy,ModelValidationClasses,Name,PasswordReset_MailText_ID,RequestEMail,RequestFolder,RequestUser,RequestUserPW,SMTPHost,SMTPPort,StoreArchiveOnFileSystem,StoreAttachmentsOnFileSystem,UnixArchivePath,UnixAttachmentPath,Updated,UpdatedBy,Value,WindowsArchivePath,WindowsAttachmentPath  FROM AD_Client WHERE ((IsActive='Y')) ORDER BY AD_Client_ID ASC NULLS LAST;

SELECT Name, Value, AD_Client_ID, AD_Org_ID FROM AD_SysConfig WHERE IsActive='Y' ORDER BY Name, AD_Client_ID, AD_Org_ID;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='291';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_BPartner' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT  ColumnName,ColumnSQL,AD_Column_ID,AD_Table_ID,IsActive,IsParent,IsGenericZoomOrigin,AD_Reference_ID,AD_Reference_Value_ID,AD_Val_Rule_ID,EntityType,FieldLength,IsDLMPartitionBoundary FROM AD_Column ORDER BY  AD_Table_ID,AD_Column_ID;

SELECT AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_SQLColumn_SourceTableColumn_ID,AD_Table_ID,Created,CreatedBy,FetchTargetRecordsMethod,IsActive,Link_Column_ID,Source_Column_ID,Source_Table_ID,SQL_GetTargetRecordIdBySourceRecordId,Updated,UpdatedBy  FROM AD_SQLColumn_SourceTableColumn WHERE ((IsActive='Y')) ORDER BY AD_Column_ID ASC NULLS LAST, AD_SQLColumn_SourceTableColumn_ID ASC NULLS LAST;

select * from AD_Window_ParentChildTableNames_v1 order by ParentTableName, ChildTableName;

SELECT AD_Client_ID,AD_Column_ID,AD_Org_ID,AD_ViewSource_Column_ID,AD_ViewSource_ID,Created,CreatedBy,IsActive,TechnicalNote,Updated,UpdatedBy  FROM AD_ViewSource_Column WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_ViewSource_ID,Created,CreatedBy,IsActive,IsInvalidateOnAfterChange,IsInvalidateOnAfterDelete,IsInvalidateOnAfterNew,IsInvalidateOnBeforeChange,IsInvalidateOnBeforeNew,Parent_LinkColumn_ID,Source_LinkColumn_ID,Source_Table_ID,TechnicalNote,Updated,UpdatedBy  FROM AD_ViewSource WHERE ((IsActive='Y'));

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='259';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_Order' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='319';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='M_InOut' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='542294';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_Cost_Type' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='146';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_UOM' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='208';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='M_Product' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='114';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='AD_User' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT  rl.AD_Reference_ID , rl.AD_Ref_List_ID , rl.Value , rl.ValueName , rl.Name , rl.Description , rl.AD_Color_ID, (SELECT array_agg(ARRAY[trl.ad_language, trl.name, trl.description]) FROM ad_ref_list_trl trl WHERE trl.ad_ref_list_id = rl.ad_ref_list_id) AS trls FROM AD_Ref_List rl  WHERE rl.IsActive='Y' ORDER BY rl.AD_Reference_ID, rl.AD_Ref_List_ID;

SELECT  r.AD_Reference_ID , r.Name , r.IsOrderByValue FROM AD_Reference r WHERE  r.ValidationType='L' ORDER BY r.AD_Reference_ID;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='505135';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='M_PricingSystem' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT t.TableName,ck.ColumnName AS KeyColumn,cd.ColumnName AS DisplayColumn,rt.IsValueDisplayed,cd.IsTranslated,rt.WhereClause,rt.OrderByClause,t.AD_Window_ID,t.PO_Window_ID, t.AD_Table_ID, cd.ColumnSQL as DisplayColumnSQL, rt.AD_Window_ID as RT_AD_Window_ID, t.IsAutocomplete, rt.ShowInactiveValues, r.Name as ReferenceName, t.TooltipType as TooltipType , rt.AD_Reference_ID , r.IsActive as Ref_IsActive, rt.IsActive as RefTable_IsActive, t.IsActive as Table_IsActive FROM AD_Ref_Table rt INNER JOIN AD_Reference r on (r.AD_Reference_ID=rt.AD_Reference_ID) INNER JOIN AD_Table t ON (rt.AD_Table_ID=t.AD_Table_ID) INNER JOIN AD_Column ck ON (rt.AD_Key=ck.AD_Column_ID) LEFT OUTER JOIN AD_Column cd ON (rt.AD_Display=cd.AD_Column_ID)  ORDER BY rt.AD_Reference_ID;

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_PaymentTerm' AND (c.ColumnName='Name');

SELECT AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,AD_Val_Rule_Included_ID,Created,CreatedBy,Description,EntityType,Help,Included_Val_Rule_ID,IsActive,SeqNo,Updated,UpdatedBy  FROM AD_Val_Rule_Included WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_Dep_ID,AD_Val_Rule_ID,Created,CreatedBy,IsActive,TechnicalNote,Updated,UpdatedBy  FROM AD_Val_Rule_Dep WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,AD_Val_Rule_ID,Classname,Code,Created,CreatedBy,Description,EntityType,IsActive,Name,Type,Updated,UpdatedBy  FROM AD_Val_Rule WHERE (1=1);

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='141';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_Currency' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.order.sales.purchasePlanning.process.WEBUI_PurchaseCandidates_PurchaseView_Launcher') AND (IsActive='Y'));

SELECT AccessLevel,AD_Client_ID,AD_Form_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Process_ID,AD_ReportView_ID,AD_Workflow_ID,AllowProcessReRun,Classname,CopyFromProcess,Created,CreatedBy,CSVFieldDelimiter,Description,DoNotQuoteRows,EntityType,FilenamePattern,Help,IsActive,IsApplySecuritySettings,IsBetaFunctionality,IsDirectPrint,IsFormatExcelFile,IsLogWarning,IsNotifyUserAfterExecution,IsOneInstanceOnly,IsReport,IsServerProcess,IsTranslateExcelHeaders,IsUpdateExportDate,IsUseBPartnerLanguage,JasperReport,JasperReport_Tabular,JSONPath,LockWaitTimeout,Name,PostgrestResponseFormat,ProcedureName,RefreshAllAfterExecution,ShowHelp,SpreadsheetFormat,SQLStatement,StoreProcessResultFileOn,StoreProcessResultFilePath,TechnicalNote,Type,Updated,UpdatedBy,Value,WorkflowValue FROM AD_Process WHERE AD_Process_ID='540972';

SELECT Description,Help,Name, AD_Language FROM AD_Process_Trl WHERE AD_Process_ID='540972';

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.order.sales.purchasePlanning.process.WEBUI_SalesOrder_PurchaseView_Launcher') AND (IsActive='Y'));

SELECT AccessLevel,AD_Client_ID,AD_Form_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Process_ID,AD_ReportView_ID,AD_Workflow_ID,AllowProcessReRun,Classname,CopyFromProcess,Created,CreatedBy,CSVFieldDelimiter,Description,DoNotQuoteRows,EntityType,FilenamePattern,Help,IsActive,IsApplySecuritySettings,IsBetaFunctionality,IsDirectPrint,IsFormatExcelFile,IsLogWarning,IsNotifyUserAfterExecution,IsOneInstanceOnly,IsReport,IsServerProcess,IsTranslateExcelHeaders,IsUpdateExportDate,IsUseBPartnerLanguage,JasperReport,JasperReport_Tabular,JSONPath,LockWaitTimeout,Name,PostgrestResponseFormat,ProcedureName,RefreshAllAfterExecution,ShowHelp,SpreadsheetFormat,SQLStatement,StoreProcessResultFileOn,StoreProcessResultFilePath,TechnicalNote,Type,Updated,UpdatedBy,Value,WorkflowValue FROM AD_Process WHERE AD_Process_ID='540887';

SELECT Description,Help,Name, AD_Language FROM AD_Process_Trl WHERE AD_Process_ID='540887';

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='190';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='M_Warehouse' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AD_Client_ID,AD_Language,AD_Language_ID,AD_Org_ID,CountryCode,Created,CreatedBy,DatePattern,IsActive,IsBaseLanguage,IsDecimalPoint,IsSystemLanguage,LanguageISO,Name,Processing,SeqNo,TimePattern,Updated,UpdatedBy  FROM AD_Language WHERE ((AD_Client_ID = '0') AND (IsActive='Y') AND ((IsBaseLanguage = 'Y') OR (IsSystemLanguage = 'Y'))) ORDER BY Name ASC NULLS LAST, AD_Language ASC NULLS LAST;

SELECT m.AD_Message_ID, m.Value, m.MsgText, m.MsgTip, m.ErrorCode,  trl.AD_Language, trl.MsgText as trl_MsgText, trl.MsgTip as trl_MsgTip FROM AD_Message m LEFT OUTER JOIN AD_Message_Trl trl on trl.AD_Message_ID=m.AD_Message_ID WHERE m.IsActive='Y' ORDER BY m.AD_Message_ID;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='188';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_ElementValue' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='261';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_Tax' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='542200';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='M_SectionCode' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='316';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_Activity' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='176';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='C_ValidCombination' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

TRUNCATE TABLE T_WEBUI_ViewSelection;

TRUNCATE TABLE T_WEBUI_ViewSelectionLine;

TRUNCATE TABLE T_ES_FTS_Search_Result;

SELECT  DISTINCT AD_Org_ID, Vendor_ID, ReminderDate  FROM C_PurchaseCandidate WHERE ((IsActive='Y') AND (Processed = 'N') AND (Vendor_ID IS NOT NULL) AND (ReminderDate IS NOT NULL));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.accounting.process.WEBUI_Fact_Acct_Repost_ViewRows') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.accounting.process.WEBUI_Fact_Acct_Repost_SingleDocument') AND (IsActive='Y'));

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='487';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='S_Resource' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AccessLevel,ACTriggerLength,AD_Client_ID,AD_Org_ID,AD_Table_ID,AD_Val_Rule_ID,AD_Window_ID,CloningEnabled,CopyColumnsFromTable,Created,CreatedBy,Description,DownlineCloningStrategy,EntityType,Help,ImportTable,IsActive,IsAutocomplete,IsChangeLog,IsDeleteable,IsDLM,IsEnableRemoteCacheInvalidation,IsHighVolume,IsSecurityEnabled,IsView,LoadSeq,Name,PersonalDataCategory,PO_Window_ID,ReplicationType,TableName,TechnicalNote,TooltipType,Updated,UpdatedBy,WEBUI_View_PageLength,WhenChildCloningStrategy FROM AD_Table WHERE AD_Table_ID='542153';

SELECT  c.ColumnName,c.IsTranslated,c.AD_Reference_ID,c.AD_Reference_Value_ID,t.AD_Window_ID,t.PO_Window_ID,c.ColumnSQL,c.FormatPattern FROM AD_Table t INNER JOIN AD_Column c ON (t.AD_Table_ID=c.AD_Table_ID) WHERE t.TableName='S_Resource_Group' AND (c.IsIdentifier='Y') ORDER BY c.SeqNo;

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.process.WEBUI_CloneLine') AND (IsActive='Y'));

SELECT * FROM ad_table_windows_v where TableName='C_BPartner_QuickInput';

SELECT AD_Window_ID,Overrides_Window_ID,IsOverrideInMenu, Name, (SELECT array_agg(ARRAY[wtrl.ad_language, wtrl.name]) AS array_agg FROM ad_window_trl wtrl WHERE wtrl.ad_window_id = w.ad_window_id) AS name_trls FROM AD_Window w WHERE IsActive='Y' AND Overrides_Window_ID IS NOT NULL ORDER BY AD_Window_ID;

SELECT AD_Client_ID,AD_InputDataSource_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,ExternalId,InternalName,IsActive,IsDestination,IsEdiEnabled,Name,Updated,UpdatedBy,URL,Value  FROM AD_InputDataSource WHERE ((IsActive='Y') AND (InternalName = 'DEST.de.metas.ordercandidate'));

SELECT AD_Client_ID,AD_Org_ID,AD_Sequence_ID,Created,CreatedBy,CurrentNext,CurrentNextSys,CustomSequenceNoProvider_JavaClass_ID,DateColumn,DecimalPattern,Description,IncrementNo,IsActive,IsAudited,IsTableID,Name,Prefix,RestartFrequency,StartNo,Suffix,Updated,UpdatedBy,VFormat FROM AD_Sequence WHERE AD_Sequence_ID='554782';

SELECT C_UOM_ID  FROM C_UOM WHERE ((IsActive='Y') AND (X12DE355 = 'KGM')) ORDER BY AD_Client_ID DESC NULLS FIRST, IsDefault DESC NULLS FIRST;

SELECT AD_Client_ID,AD_Org_ID,CostingPrecision,Created,CreatedBy,C_UOM_ID,Description,IsActive,IsDefault,Name,StdPrecision,UOMSymbol,UOMType,Updated,UpdatedBy,X12DE355 FROM C_UOM WHERE C_UOM_ID='540017';

SELECT table_record_reference_retrieve_distinct_ids('AD_User_Record_Access','AD_Table_ID');

SELECT AD_Client_ID,AD_ModelValidator_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,Help,IsActive,ModelValidationClass,Name,SeqNo,Updated,UpdatedBy  FROM AD_ModelValidator WHERE (1=1) ORDER BY SeqNo ASC NULLS LAST, AD_ModelValidator_ID ASC NULLS LAST;

SELECT AD_BoilerPlate_Var_Eval_ID,AD_BoilerPlate_Var_ID,AD_Client_ID,AD_Org_ID,C_DocType_ID,Created,CreatedBy,EvalTime,IsActive,Updated,UpdatedBy  FROM AD_BoilerPlate_Var_Eval WHERE (AD_Client_ID IN (0,'0')) ORDER BY AD_BoilerPlate_Var_ID,C_DocType_ID;

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,IsActive,IsStaled,IsValid,LastRefreshDate,StaledSinceDate,Updated,UpdatedBy  FROM AD_Table_MView;

SELECT AD_Client_ID,AD_Org_ID,Classname,Created,CreatedBy,IsActive,M_IolCandHandler_ID,TableName,Updated,UpdatedBy  FROM M_IolCandHandler WHERE ((IsActive='Y') AND (Classname = 'de.metas.order.inoutcandidate.OrderLineShipmentScheduleHandler'));

SELECT AD_Client_ID,AD_Org_ID,AD_User_InCharge_ID,C_ILCandHandler_ID,Classname,Created,CreatedBy,Description,EntityType,IsActive,Is_AD_User_InCharge_UI_Setting,Name,TableName,Updated,UpdatedBy  FROM C_ILCandHandler WHERE ((IsActive='Y')) ORDER BY C_ILCandHandler_ID ASC NULLS LAST;

SELECT AD_Client_ID,AD_InputDataSource_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,ExternalId,InternalName,IsActive,IsDestination,IsEdiEnabled,Name,Updated,UpdatedBy,URL,Value  FROM AD_InputDataSource WHERE ((IsActive='Y') AND (InternalName = 'DEST.de.metas.invoicecandidate'));

SELECT AD_Client_ID,AD_Org_ID,AD_ReplicationStrategy_ID,Created,CreatedBy,Description,IsActive,IsEUOneStopShop,IsSummary,Name,Updated,UpdatedBy,Value  FROM AD_Org WHERE ((IsActive='Y') AND (AD_Client_ID='0') AND (AD_Client_ID = '1000000') AND ((AD_Org_ID <> '0' OR AD_Org_ID IS NULL))) ORDER BY AD_Org_ID ASC NULLS LAST;

SELECT AD_Client_ID,AD_InputDataSource_ID,AD_Org_ID,Created,CreatedBy,Description,EntityType,ExternalId,InternalName,IsActive,IsDestination,IsEdiEnabled,Name,Updated,UpdatedBy,URL,Value  FROM AD_InputDataSource WHERE ((IsActive='Y') AND (InternalName = 'DEST.de.metas.flatrate'));

SELECT AD_Client_ID,AD_Org_ID,Classname,Created,CreatedBy,IsActive,M_IolCandHandler_ID,TableName,Updated,UpdatedBy  FROM M_IolCandHandler WHERE ((IsActive='Y') AND (Classname = 'de.metas.contracts.inoutcandidate.SubscriptionShipmentScheduleHandler'));

SELECT AD_Client_ID,AD_Org_ID,Classname,Created,CreatedBy,C_ReferenceNo_Type_ID,Description,EntityType,IsActive,Name,Updated,UpdatedBy,Value  FROM C_ReferenceNo_Type WHERE ((IsActive='Y')) ORDER BY C_ReferenceNo_Type_ID ASC NULLS LAST;

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,C_ReferenceNo_Type_ID,C_ReferenceNo_Type_Table_ID,Description,EntityType,IsActive,Updated,UpdatedBy  FROM C_ReferenceNo_Type_Table WHERE (C_ReferenceNo_Type_ID='540005') ORDER BY AD_Table_ID;

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,C_ReferenceNo_Type_ID,C_ReferenceNo_Type_Table_ID,Description,EntityType,IsActive,Updated,UpdatedBy  FROM C_ReferenceNo_Type_Table WHERE (C_ReferenceNo_Type_ID='540006') ORDER BY AD_Table_ID;

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy  FROM C_Doc_Outbound_Config WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '1000000'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '540000'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '1000001'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '540005'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '540008'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '540002'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,BPartner_ColumnName_ID,C_Doc_Outbound_Config_CC_ID,C_Doc_Outbound_Config_ID,Created,CreatedBy,IsActive,Override_DocType_ID,Updated,UpdatedBy  FROM C_Doc_Outbound_Config_CC WHERE ((IsActive='Y') AND (C_Doc_Outbound_Config_ID = '540020'));

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='1000000';

SELECT AD_Client_ID,AD_Language,AD_Org_ID,AD_ReplicationStrategy_ID,AutoArchive,Created,CreatedBy,Description,DocumentDir,EMailTest,IsActive,IsCostImmediate,IsMultiLingualDocument,IsPostImmediate,IsServerEMail,IsSmtpAuthorization,IsStartTLS,IsUseBetaFunctions,MMPolicy,ModelValidationClasses,Name,PasswordReset_MailText_ID,RequestEMail,RequestFolder,RequestUser,RequestUserPW,SMTPHost,SMTPPort,StoreArchiveOnFileSystem,StoreAttachmentsOnFileSystem,UnixArchivePath,UnixAttachmentPath,Updated,UpdatedBy,Value,WindowsArchivePath,WindowsAttachmentPath FROM AD_Client WHERE AD_Client_ID='1000000';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='540000';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='1000001';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='540005';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='540008';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='540002';

SELECT AD_Client_ID,AD_Org_ID,AD_PrintFormat_ID,AD_Table_ID,CCPath,C_Doc_Outbound_Config_ID,Created,CreatedBy,DocBaseType,IsActive,IsDirectEnqueue,IsDirectProcessQueueItem,Updated,UpdatedBy FROM C_Doc_Outbound_Config WHERE C_Doc_Outbound_Config_ID='540020';

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.document.archive.process.ExportArchivePDF') AND (IsActive='Y'));

SELECT DISTINCT(TableName)  FROM AD_Table WHERE ((IsActive='Y') AND (IsEnableRemoteCacheInvalidation = 'Y')) ORDER BY TableName ASC NULLS LAST;

SELECT AD_Client_ID,AD_NotificationGroup_CC_ID,AD_NotificationGroup_ID,AD_Org_ID,AD_User_ID,Created,CreatedBy,IsActive,Updated,UpdatedBy  FROM AD_NotificationGroup_CC WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_NotificationGroup_ID,AD_Org_ID,Created,CreatedBy,Deadletter_User_ID,Description,EntityType,InternalName,IsActive,IsNotifyOrgBPUsersOnly,Name,Updated,UpdatedBy  FROM AD_NotificationGroup WHERE ((IsActive='Y'));

SELECT AD_Column_ID FROM AD_Column WHERE ((IsActive='Y') AND (IsAutoApplyValidationRule = 'Y')) ORDER BY AD_Table_ID ASC NULLS LAST, AD_Column_ID ASC NULLS LAST;

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.WEBUI_UserGroupRecordAccess_Grant') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.WEBUI_UserGroupRecordAccess_Revoke') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.ui.web.impexp.DeleteImportDataProcess') AND (IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,Created,CreatedBy,ES_FieldName,ES_FTS_Config_Field_ID,ES_FTS_Config_ID,IsActive,Updated,UpdatedBy  FROM ES_FTS_Config_Field WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,ES_CreateIndexCommand,ES_DocumentToIndexTemplate,ES_FTS_Config_ID,ES_Index,ES_QueryCommand,IsActive,Updated,UpdatedBy  FROM ES_FTS_Config WHERE ((IsActive='Y'));

SELECT AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,ES_FTS_Config_ID,ES_FTS_Config_SourceModel_ID,IsActive,Parent_Column_ID,Updated,UpdatedBy  FROM ES_FTS_Config_SourceModel WHERE ((IsActive='Y'));

SELECT AD_BusinessRule_ID,AD_BusinessRule_Precondition_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,Precondition_Rule_ID,PreconditionSQL,PreconditionType,Updated,UpdatedBy  FROM AD_BusinessRule_Precondition WHERE ((IsActive='Y')) ORDER BY AD_BusinessRule_ID ASC NULLS LAST, AD_BusinessRule_Precondition_ID ASC NULLS LAST;

SELECT AD_BusinessRule_ID,AD_BusinessRule_Trigger_ID,AD_Client_ID,AD_Org_ID,ConditionSQL,Created,CreatedBy,IsActive,OnDelete,OnNew,OnUpdate,Source_Table_ID,TargetRecordMappingSQL,Updated,UpdatedBy  FROM AD_BusinessRule_Trigger WHERE ((IsActive='Y')) ORDER BY AD_BusinessRule_ID ASC NULLS LAST, AD_BusinessRule_Trigger_ID ASC NULLS LAST;

SELECT AD_BusinessRule_ID,AD_Client_ID,AD_Org_ID,AD_Table_ID,Created,CreatedBy,IsActive,IsDebug,Name,Updated,UpdatedBy,Validation_Rule_ID,Warning_Message_ID  FROM AD_BusinessRule WHERE ((IsActive='Y')) ORDER BY AD_BusinessRule_ID ASC NULLS LAST;

SELECT AD_BusinessRule_ID,AD_BusinessRule_Precondition_ID,AD_Client_ID,AD_Org_ID,Created,CreatedBy,Description,IsActive,Precondition_Rule_ID,PreconditionSQL,PreconditionType,Updated,UpdatedBy  FROM AD_BusinessRule_Precondition WHERE ((IsActive='Y') AND (AD_BusinessRule_ID = '540004')) ORDER BY AD_BusinessRule_ID ASC NULLS LAST, AD_BusinessRule_Precondition_ID ASC NULLS LAST;

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.UserGroupRecordAccess_Grant') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.UserGroupRecordAccess_Revoke') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.RecordPrivateAccess_Add') AND (IsActive='Y'));

SELECT AD_Process_ID  FROM AD_Process WHERE ((Classname = 'de.metas.security.process.RecordPrivateAccess_Remove') AND (IsActive='Y'));