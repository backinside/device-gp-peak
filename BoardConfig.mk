include device/qcom/msm7627a/BoardConfig.mk

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := true
TARGET_CPU_SMP := true

BOARD_EGL_CFG := device/qcom/msm7627a/egl.cfg

# Enable WebGL
ENABLE_WEBGL := true

# Camera
USE_CAMERA_STUB:=false
BOARD_CAMERA_LIBRARIES := libcamera

# Misc configs
KERNEL_DEFCONFIG := C8680_defconfig
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 471859200
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1073741824
BOARD_FLASH_BLOCK_SIZE := 4096

# hack to prevent llvm from building
BOARD_USE_QCOM_LLVM_CLANG_RS := true

# Vold
BOARD_VOLD_MAX_PARTITIONS := 18

# Wireless
BOARD_HAS_ATH_WLAN := true

WPA_SUPPLICANT_VERSION := VER_2_0_DEV
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_HOSTAPD_DRIVER := NL80211
CONFIG_DRIVER_NL80211 := y
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/wlan.ko"
WIFI_DRIVER_MODULE_NAME := "wlan"
WIFI_SDIO_IF_DRIVER_MODULE_PATH := "/system/lib/modules/cfg80211.ko"
WIFI_SDIO_IF_DRIVER_MODULE_NAME := "cfg80211"

WIFI_TEST_INTERFACE := "sta"
WIFI_DRIVER_FW_PATH_STA := "sta"
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_P2P := "p2p"