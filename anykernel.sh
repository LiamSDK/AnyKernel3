properties() { '
kernel.string=Specatravel
kernel.revision=5.4
kernel.made=@LiamSDK
anykernel3.made=osm0sis @ xda-developers
kernel.compiler=ZyC clang
message.word=Thank you for installing Specatravel!
do.devicecheck=1
do.cleanup=1
device.name1=spacewar
supported.versions=12.0-16.0
supported.patchlevels=
supported.vendorpatchlevels=
'; }

attributes() {
set_perm_recursive 0 0 755 644 $ramdisk/*;
set_perm_recursive 0 0 750 750 $ramdisk/init* $ramdisk/sbin;
} # end attributes


## boot shell variables
block=/dev/block/by-name/boot;
is_slot_device=1;
ramdisk_compression=auto;
patch_vbmeta_flag=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh && attributes;

# boot install
dump_boot; # use split_boot to skip ramdisk unpack, e.g. for devices with init_boot ramdisk
write_boot; # use flash_boot to skip ramdisk repack, e.g. for devices with init_boot ramdisk
## end boot install
