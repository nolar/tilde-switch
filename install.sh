#!/bin/bash
set -euo pipefail

PLIST="com.local.tilde-switch.plist"
SRC="$(cd "$(dirname "$0")" && pwd)/$PLIST"
DST="$HOME/Library/LaunchAgents/$PLIST"

if launchctl list "$PLIST" &>/dev/null 2>&1; then
    launchctl unload "$DST" 2>/dev/null || true
fi

cp "$SRC" "$DST"
launchctl load "$DST"

echo "Installed and loaded $PLIST"
