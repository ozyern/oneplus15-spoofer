#!/system/bin/sh
# ============================================================
# Rapchick Engine — OP15 EU Spoof | service.sh
# Safe for SukiSU Ultra on OxygenOS 16 / Android 16
# ============================================================

export PATH="/data/adb/ksu/bin:/data/adb/magisk:/data/adb/ap/bin:/sbin:/system/bin:/system/xbin:$PATH"

# Wait for full boot
while [ "$(getprop sys.boot_completed)" != "1" ]; do
    sleep 2
done

# Let OxygenOS finish all late-init hooks before overriding
sleep 8

FP="OnePlus/CPH2747/OP5CE1L1:16/AP4A.250605.001/T.250610:user/release-keys"

resetprop ro.product.brand             "OnePlus"
resetprop ro.product.manufacturer      "OnePlus"
resetprop ro.product.name              "CPH2747"
resetprop ro.product.device            "OP5CE1L1"
resetprop ro.product.model             "CPH2747"
resetprop ro.product.marketname        "OnePlus 15"
resetprop ro.build.product             "OP5CE1L1"
resetprop ro.build.brand               "OnePlus"
resetprop ro.build.manufacturer        "OnePlus"
resetprop ro.build.tags                "release-keys"
resetprop ro.build.type                "user"
resetprop ro.build.version.release     "16"
resetprop ro.build.version.sdk         "36"
resetprop ro.build.version.security_patch "2025-06-05"
resetprop ro.build.fingerprint                "$FP"
resetprop ro.system.build.fingerprint         "$FP"
resetprop ro.vendor.build.fingerprint         "$FP"
resetprop ro.product.build.fingerprint        "$FP"
resetprop ro.odm.build.fingerprint            "$FP"
resetprop ro.system_ext.build.fingerprint     "$FP"
resetprop ro.product.system.brand             "OnePlus"
resetprop ro.product.system.manufacturer      "OnePlus"
resetprop ro.product.system.model             "CPH2747"
resetprop ro.product.system.name              "CPH2747"
resetprop ro.product.system.device            "OP5CE1L1"
resetprop ro.product.vendor.brand             "OnePlus"
resetprop ro.product.vendor.manufacturer      "OnePlus"
resetprop ro.product.vendor.model             "CPH2747"
resetprop ro.product.vendor.name              "CPH2747"
resetprop ro.product.vendor.device            "OP5CE1L1"
resetprop ro.product.odm.brand                "OnePlus"
resetprop ro.product.odm.manufacturer         "OnePlus"
resetprop ro.product.odm.model                "CPH2747"
resetprop ro.product.odm.name                 "CPH2747"
resetprop ro.product.odm.device               "OP5CE1L1"
resetprop ro.product.product.brand            "OnePlus"
resetprop ro.product.product.manufacturer     "OnePlus"
resetprop ro.product.product.model            "CPH2747"
resetprop ro.product.product.name             "CPH2747"
resetprop ro.product.product.device           "OP5CE1L1"
resetprop ro.product.brand_for_attestation    "OnePlus"
resetprop ro.product.device_for_attestation   "OP5CE1L1"
resetprop ro.product.manufacturer_for_attestation "OnePlus"
resetprop ro.product.model_for_attestation    "CPH2747"
resetprop ro.product.name_for_attestation     "CPH2747"
resetprop ro.vendor.oplus.version             "CPH2747_16.0.0.250610"
resetprop ro.oplus.version                    "CPH2747_16.0.0.250610"
resetprop ro.oplus.regionmark                 "EU"
