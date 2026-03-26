# OnePlus 15 EU Spoof

<p align="center">
  <img src="https://img.shields.io/badge/Android-16-green?style=for-the-badge&logo=android"/>
  <img src="https://img.shields.io/badge/Target-CPH2747-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Region-EU-lightgrey?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/By-Ozyern-black?style=for-the-badge"/>
</p>

Property-spoofing module that makes the device report itself as **OnePlus 15 EU (CPH2747)** on **Android 16 / OxygenOS 16**.

Part of the **Rapchick Engine** project by [@ozyern](https://github.com/ozyern).

## Spoof Profile

| Property | Value |
|---|---|
| Model | `CPH2747` |
| Device codename | `OP5CE1L1` |
| Market name | `OnePlus 15` |
| Brand / Manufacturer | `OnePlus` |
| Android | `16` (SDK `36`) |
| Security patch | `2025-06-05` |
| Build fingerprint | `OnePlus/CPH2747/OP5CE1L1:16/AP4A.250605.001/T.250610:user/release-keys` |
| OxygenOS version props | `CPH2747_16.0.0.250610` |
| Region mark | `EU` |

## Requirements

- Rooted device with a module manager that supports this package format
- Android 16 base ROM
- Recommended test target: OxygenOS-based ROMs

## Installation

1. Download the latest zip from [Releases](../../releases).
2. Open your root module manager.
3. Install the zip as a module.
4. Reboot.

## Verification

Run:

```bash
adb shell getprop ro.product.model
adb shell getprop ro.product.marketname
adb shell getprop ro.build.version.release
adb shell getprop ro.build.fingerprint
adb shell getprop ro.oplus.regionmark
```

Expected key values:

- `ro.product.model=CPH2747`
- `ro.product.marketname=OnePlus 15`
- `ro.build.version.release=16`
- `ro.oplus.regionmark=EU`

## How It Works

- `system.prop`: sets baseline identity props during early property loading.
- `service.sh`: waits for boot completion, then applies a second `resetprop` pass to override late-init resets.
- `system/etc/permissions/com.oneplus.software.xml`: exposes OnePlus software feature flags used by some apps.

`persist.*` props and `ro.debuggable` are intentionally not forced at runtime to avoid stability issues.

## Project Structure

```text
.
├── module.prop
├── system.prop
├── service.sh
├── customize.sh
├── META-INF/
│   └── com/google/android/
│       ├── update-binary
│       └── updater-script
└── system/
    └── etc/
        └── permissions/
            └── com.oneplus.software.xml
```

## Troubleshooting

- Props do not stick after boot:
  - Reboot once more and verify again.
  - Check for conflicts with other prop-spoof modules.
- Bootloop after flashing:
  - Remove the module from recovery or safe mode.
  - Ensure your environment supports this module packaging and scripts.

## License

MIT © 2026 . See [LICENSE](LICENSE).

## Disclaimer

This module only changes software-reported properties. It does not modify hardware, modem/baseband, or bootloader. Use at your own risk.
