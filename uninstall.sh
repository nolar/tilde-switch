#!/bin/bash
set -euo pipefail

PLIST="com.local.tilde-switch.plist"
DST="$HOME/Library/LaunchAgents/$PLIST"

launchctl unload "$DST" 2>/dev/null || true
rm -f "$DST"

echo "Unloaded and removed $PLIST"
