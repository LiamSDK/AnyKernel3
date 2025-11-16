# AnyKernel3 Ramdisk Mod Script
# osm0sis @ xda-developers

## AnyKernel setup
# begin properties
properties() { '
kernel.string=StoneAge
kernel.revision=5.4
kernel.made=Dylan & Ryan Vordek
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=Google Clang
do.devicecheck=1
do.cleanup=1
device.name1=moonstone
device.name2=sunstone
supported.versions=12.0 - 17.0
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install
# boot shell variables
block=boot;
is_slot_device=auto;
no_block_display=1;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
split_boot;
flash_boot;
## end boot install
