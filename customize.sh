#!/system/bin/sh
# ============================================================
# Rapchick Engine — OP15 EU Spoof | customize.sh
# v1.1
# ============================================================

ui_print ""
ui_print "  ██████╗  █████╗ ██████╗  ██████╗██╗  ██╗██╗ ██████╗██╗  ██╗"
ui_print "  ██╔══██╗██╔══██╗██╔══██╗██╔════╝██║  ██║██║██╔════╝██║ ██╔╝"
ui_print "  ██████╔╝███████║██████╔╝██║     ███████║██║██║     █████╔╝ "
ui_print "  ██╔══██╗██╔══██║██╔═══╝ ██║     ██╔══██║██║██║     ██╔═██╗ "
ui_print "  ██║  ██║██║  ██║██║     ╚██████╗██║  ██║██║╚██████╗██║  ██╗"
ui_print "  ╚═╝  ╚═╝╚═╝  ╚═╝╚═╝      ╚═════╝╚═╝  ╚═╝╚═╝ ╚═════╝╚═╝  ╚═╝"
ui_print ""
ui_print "  Rapchick Engine by Ozyern (@reimagine)"
ui_print "  Module: OnePlus 15 EU (CPH2747EEA) Device Spoof  [v1.1]"
ui_print "──────────────────────────────────────────"
ui_print ""
ui_print "  [*] Injecting device identity props..."
ui_print "  [*] Target  : OnePlus 15 EU — CPH2747EEA"
ui_print "  [*] FP      : AP4A.250605.001 / T.250610"
ui_print "  [*] Android 16 | OxygenOS 16 | SDK 36"
ui_print "  [*] Security patch : system default (unchanged)"
ui_print "  [*] Perf tuning    : SM8750 / 16 GB class"
ui_print ""

# Set permissions
set_perm "$MODPATH/service.sh" root root 0755

ui_print "  [✓] Done. Reboot to apply spoof + perf tuning."
ui_print ""
