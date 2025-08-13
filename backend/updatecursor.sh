#!/bin/bash

APPDIR=~/Applications/cursor
APPIMAGE_URL_API="https://www.cursor.com/api/download?platform=linux-x64&releaseTrack=stable"

# Create the app directory if it doesn't exist
mkdir -p "$APPDIR"

# Fetch the actual AppImage URL from the API
echo "Fetching latest Cursor AppImage URL..."
DOWNLOAD_URL=$(curl -s "$APPIMAGE_URL_API" | jq -r '.downloadUrl')

# Check if we got a valid URL
if [[ -z "$DOWNLOAD_URL" || "$DOWNLOAD_URL" == "null" ]]; then
  echo "Error: Failed to retrieve download URL from Cursor API."
  exit 1
fi

# Download and make it executable
echo "Downloading Cursor AppImage from $DOWNLOAD_URL..."
wget -O "$APPDIR/cursor.AppImage" "$DOWNLOAD_URL"
chmod +x "$APPDIR/cursor.AppImage"

echo "Cursor AppImage installed at $APPDIR/cursor.AppImage"