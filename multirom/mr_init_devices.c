#include <stdlib.h>

// These are paths to folders in /sys which contain "uevent" file
// need to init this device.
// MultiROM needs to init framebuffer, mmc blocks, input devices,
// some ADB-related stuff and USB drives, if OTG is supported
// You can use * at the end to init this folder and all its subfolders
const char *mr_init_devices[] =
{

	"/sys/class/graphics/fb0",

	"/sys/block/mmcblk0",
	"/sys/devices/soc.0",
	"/sys/devices/soc.0/7824900.sdhci",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0",
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p22", //boot
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p26", //cache
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p1", //modem
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p27", //persist
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p24", //system
	"/sys/devices/soc.0/7824900.sdhci/mmc_host/mmc0/mmc0:0001/block/mmcblk0/mmcblk0p37", //userdata

	//sdcard
	"/sys/devices/soc.0/7864900.sdhci/mmc_host/mmc1",
        "/sys/devices/soc.0/7864900.sdhci/mmc_host/mmc1/mmc1:0001",
        "/sys/devices/soc.0/7864900.sdhci/mmc_host/mmc1/mmc1:0001/block",
        "/sys/devices/soc.0/7864900.sdhci/mmc_host/mmc1/mmc1:0001/block/mmcblk1*",
	"/sys/bus/mmc",
	"/sys/bus/mmc/drivers/mmcblk",
	"/sys/module/mmc_core",
	"/sys/module/mmcblk",
	"/sys/block/mmcblk1",

	"/sys/devices/soc.0/gpio_keys.69/input*",
	"/sys/devices/virtual/input*",
     // " /sys/devices/virtual/touchscreen/touchscreen_dev/*"
	"/sys/devices/virtual/misc/uinput",
     //	"/sys/devices/soc.0/78b6000.i2c/i2c-0/0-0068/input*",

	// for adb
	"/sys/devices/virtual/tty/ptmx",
	"/sys/devices/virtual/android_usb/android0*",
	"/sys/bus/usb",

	// USB drive
        "/sys/devices/platform/msm_hsusb*",

	NULL
};
