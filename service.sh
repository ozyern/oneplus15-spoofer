#!/system/bin/sh
# ============================================================
# Rapchick Engine — OP15 EU Spoof | service.sh
# v1.1 — CPH2747EEA, system-default patch, perf tuning
# Safe for SukiSU Ultra on OxygenOS 16 / Android 16
# ============================================================

export PATH="/data/adb/ksu/bin:/data/adb/magisk:/data/adb/ap/bin:/sbin:/system/bin:/system/xbin:$PATH"

# Wait for full boot
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Let OxygenOS finish all late-init hooks before overriding
sleep 8

FP="OnePlus/CPH2747EEA/OP5CE1L1:16/AP4A.250605.001/T.250610:user/release-keys"

# ── Device identity ──────────────────────────────────────────
resetprop ro.product.brand             "OnePlus"
resetprop ro.product.manufacturer      "OnePlus"
resetprop ro.product.name              "CPH2747EEA"
resetprop ro.product.device            "OP5CE1L1"
resetprop ro.product.model             "CPH2747EEA"
resetprop ro.product.marketname        "OnePlus 15"
resetprop ro.build.product             "OP5CE1L1"
resetprop ro.build.brand               "OnePlus"
resetprop ro.build.manufacturer        "OnePlus"
resetprop ro.build.tags                "release-keys"
resetprop ro.build.type                "user"
resetprop ro.build.version.release     "16"
resetprop ro.build.version.sdk         "36"
# ro.build.version.security_patch intentionally left at system default

# ── Fingerprints ─────────────────────────────────────────────
resetprop ro.build.fingerprint                "$FP"
resetprop ro.system.build.fingerprint         "$FP"
resetprop ro.vendor.build.fingerprint         "$FP"
resetprop ro.product.build.fingerprint        "$FP"
resetprop ro.odm.build.fingerprint            "$FP"
resetprop ro.system_ext.build.fingerprint     "$FP"

# ── Partition props ──────────────────────────────────────────
resetprop ro.product.system.brand             "OnePlus"
resetprop ro.product.system.manufacturer      "OnePlus"
resetprop ro.product.system.model             "CPH2747EEA"
resetprop ro.product.system.name              "CPH2747EEA"
resetprop ro.product.system.device            "OP5CE1L1"
resetprop ro.product.vendor.brand             "OnePlus"
resetprop ro.product.vendor.manufacturer      "OnePlus"
resetprop ro.product.vendor.model             "CPH2747EEA"
resetprop ro.product.vendor.name              "CPH2747EEA"
resetprop ro.product.vendor.device            "OP5CE1L1"
resetprop ro.product.odm.brand                "OnePlus"
resetprop ro.product.odm.manufacturer         "OnePlus"
resetprop ro.product.odm.model                "CPH2747EEA"
resetprop ro.product.odm.name                 "CPH2747EEA"
resetprop ro.product.odm.device               "OP5CE1L1"
resetprop ro.product.product.brand            "OnePlus"
resetprop ro.product.product.manufacturer     "OnePlus"
resetprop ro.product.product.model            "CPH2747EEA"
resetprop ro.product.product.name             "CPH2747EEA"
resetprop ro.product.product.device           "OP5CE1L1"

# ── Attestation ──────────────────────────────────────────────
resetprop ro.product.brand_for_attestation    "OnePlus"
resetprop ro.product.device_for_attestation   "OP5CE1L1"
resetprop ro.product.manufacturer_for_attestation "OnePlus"
resetprop ro.product.model_for_attestation    "CPH2747EEA"
resetprop ro.product.name_for_attestation     "CPH2747EEA"

# ── OxygenOS EU ──────────────────────────────────────────────
resetprop ro.vendor.oplus.version             "CPH2747EEA_16.0.0.250610"
resetprop ro.oplus.version                    "CPH2747EEA_16.0.0.250610"
resetprop ro.oplus.regionmark                 "EU"

# ── SoC identity ─────────────────────────────────────────────
resetprop ro.soc.model                        "SM8750"
resetprop ro.soc.manufacturer                 "QTI"

# ── RAM class ────────────────────────────────────────────────
resetprop ro.config.hw_ram_gb                 "16"
resetprop ro.product.mem_size_mb              "16384"

# ── Performance / app experience ─────────────────────────────
resetprop ro.vendor.qti.sys.fw.bservice_enable  "true"
resetprop ro.vendor.qti.sys.fw.bservice_limit   "5"
resetprop ro.config.max_starting_bg             "8"
resetprop ro.sys.fw.bg_apps_limit               "60"
resetprop persist.vendor.qti.inputopts.enable_motionpred "true"
resetprop persist.sys.oplus.perf_mode           "1"
resetprop ro.vendor.oplus.hypercooling          "1"
resetprop ro.config.hw_quickpoweron             "true"
resetprop sys.use_fifo_ui                       "1"

