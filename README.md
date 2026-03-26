# Rapchick Engine — OnePlus 15 EU Spoof

<p align="center">
  <img src="https://img.shields.io/badge/SukiSU%20Ultra-Compatible-red?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/Android-16-green?style=for-the-badge&logo=android"/>
  <img src="https://img.shields.io/badge/Target-CPH2747-blue?style=for-the-badge"/>
  <img src="https://img.shields.io/badge/By-Ozyern-black?style=for-the-badge"/>
</p>

A **SukiSU Ultra** module that spoofs your device identity as the **OnePlus 15 EU (CPH2747)** running **Android 16 / OxygenOS 16**. Works on any Android 16 device.

Part of the **Rapchick Engine** — root-level modules for OnePlus devices by [@reimagine](https://github.com/ozyern).

---

## Spoofed Identity

| Property | Value |
|---|---|
| Model | `CPH2747` |
| Device codename | `OP5CE1L1` |
| Market name | `OnePlus 15` |
| Brand / Manufacturer | `OnePlus` |
| Android | `16` (SDK 36) |
| Security patch | `2025-06-05` |
| Fingerprint | `AP4A.250605.001 / T.250610` |
| OxygenOS | `CPH2747_16.0.0.250610` |
| Region | `EU` |

---

## Requirements

- **Root:** [SukiSU Ultra](https://github.com/SukiSU-Ultra/SukiSU-Ultra)
- **Android:** 16
- Tested on: OnePlus 9 Pro — OxygenOS 16 port

---

## Installation

1. Download the latest `.zip` from [Releases](../../releases)
2. Open **SukiSU Ultra** → Modules → Install from storage
3. Flash the zip
4. Reboot

---

## Verify

```bash
adb shell getprop ro.product.model
# CPH2747

adb shell getprop ro.product.marketname
# OnePlus 15

adb shell getprop ro.build.version.release
# 16

adb shell getprop ro.build.fingerprint
# OnePlus/CPH2747/OP5CE1L1:16/AP4A.250605.001/T.250610:user/release-keys
```

---

## How It Works

- `system.prop` — injects all props at early boot across all partitions (system, vendor, odm, product)
- `service.sh` — runs a `resetprop` pass 8 seconds after `sys.boot_completed=1`, overriding any OxygenOS late-init reassignments. Uses explicit `PATH` so `resetprop` resolves correctly under SukiSU Ultra's shell
- `system/etc/permissions/com.oneplus.software.xml` — declares OxygenOS feature flags so apps that check for OOS software features see them as present

> **Note:** `persist.*` props and `ro.debuggable` are intentionally excluded — setting these via `resetprop` at runtime causes instability on OxygenOS 16.

---

## File Structure

```
rapchick-op15-spoof/
├── module.prop
├── system.prop
├── service.sh
└── system/
    └── etc/
        └── permissions/
            └── com.oneplus.software.xml
```

---

## Why Not META-INF?

SukiSU Ultra uses the **KernelSU module format** — no `META-INF`, no `update-binary`, no `customize.sh` needed. Including Magisk-style `META-INF` calls `magisk/util_functions.sh` which doesn't exist on SukiSU and causes an **instant bootloop**.

---

## Part of Rapchick Engine

- 🌐 [ozyern.me](https://ozyern.me)
- 📦 More modules coming soon

---

## License

MIT © 2025 Ozyern (@reimagine) — see [LICENSE](LICENSE)

---

## Disclaimer

Software-level property spoofing only. Does not modify hardware, bootloader, or baseband. Use at your own risk.
