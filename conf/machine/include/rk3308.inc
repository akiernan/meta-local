SOC_FAMILY = "rk3308"

DEFAULTTUNE ?= "cortexa35-crypto"

require conf/machine/include/soc-family.inc
require conf/machine/include/tune-cortexa35.inc
require conf/machine/include/rockchip-defaults.inc

SERIAL_CONSOLES = "1500000;ttyS0"

AVAILTUNES += "cortexa35-32 cortexa35-32-crypto"
ARMPKGARCH:tune-cortexa35-32             = "cortexa35-32"
ARMPKGARCH:tune-cortexa35-32-crypto      = "cortexa35-32-crypto"
TUNE_FEATURES:tune-cortexa35-32          = "armv8a crc cortexa35 callconvention-hard neon"
TUNE_FEATURES:tune-cortexa35-32-crypto   = "${TUNE_FEATURES:tune-cortexa35-32} crypto"
PACKAGE_EXTRA_ARCHS:tune-cortexa35-32             = "${PACKAGE_EXTRA_ARCHS:tune-armv8a-crc} cortexa35-32 cortexa35-32hf-neon"
PACKAGE_EXTRA_ARCHS:tune-cortexa35-32-crypto      = "${PACKAGE_EXTRA_ARCHS:tune-armv8a-crc-crypto} cortexa35-32 cortexa35-32-cryptohf-neon"

BASE_LIB:tune-cortexa35-32               = "lib"
BASE_LIB:tune-cortexa35-32-crypto        = "lib"
