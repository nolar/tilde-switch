#!/bin/bash
set -euo pipefail

LABEL="com.local.tilde-switch"
PLIST="$LABEL.plist"
SRC="$(cd "$(dirname "$0")" && pwd)/$PLIST"
DST="$HOME/Library/LaunchAgents/$PLIST"
DOMAIN="gui/$(id -u)"

launchctl bootout "$DOMAIN/$LABEL" 2>/dev/null || true
cp "$SRC" "$DST"
launchctl bootstrap "$DOMAIN" "$DST"

echo "Installed and loaded $PLIST"
