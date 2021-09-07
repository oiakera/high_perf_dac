##########################################################################################
#
# MMT Extended Config Script
#
##########################################################################################

##########################################################################################
# Config Flags
##########################################################################################

# Uncomment and change 'MINAPI' and 'MAXAPI' to the minimum and maximum android version for your mod
# Uncomment DYNLIB if you want libs installed to vendor for oreo+ and system for anything older
# Uncomment DEBUG if you want full debug logs (saved to /sdcard)
#MINAPI=26
#MAXAPI=30
#DYNLIB=true
DEBUG=true

##########################################################################################
# Permissions
##########################################################################################

set_permissions() {
set_perm $MODPATH/post-fs-data.sh 0 0 0777 0777
set_perm $MODPATH/sound-boost.sh 0 0 0777 0777
set_perm $MODPATH/high-perf-dac.sh 0 0 0777 0777
}

##########################################################################################
# MMT Extended Logic - Don't modify anything after this
##########################################################################################

SKIPUNZIP=1
unzip -qjo "$ZIPFILE" 'common/functions.sh' -d $TMPDIR >&2
. $TMPDIR/functions.sh
