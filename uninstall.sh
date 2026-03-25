#!/bin/bash
set -euo pipefail

LABEL="com.local.tilde-switch"
PLIST="$LABEL.plist"
DST="$HOME/Library/LaunchAgents/$PLIST"
DOMAIN="gui/$(id -u)"

launchctl bootout "$DOMAIN/$LABEL" 2>/dev/null || true
rm -f "$DST"

echo "Unloaded and removed $PLIST"
