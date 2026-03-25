# tilde-switch

Swap the tilde/backtick key (`§/±`) with the extra key next to left-shift (`~/```) on ISO European Mac keyboards, putting tilde where you'd expect it on a US layout.

Uses macOS `hidutil` to remap:

| Physical key | Produces  |
|---|-----------|
| Top-left (ISO `§/±`) | `` `/~ `` |
| Next to left-shift (ISO extra key) | `§/±`     |

## Install

```bash
./install.sh
```

This copies the LaunchAgent plist to `~/Library/LaunchAgents/` and loads it. The remapping will apply immediately and persist across reboots.

## Uninstall

```bash
./uninstall.sh
```

## Manual use

To apply the remapping for the current session only:

```bash
./.tilde-switch
```
