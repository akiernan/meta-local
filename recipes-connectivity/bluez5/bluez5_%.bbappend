FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append = " file://0001-bluez5-Convert-crypto-to-use-mbedtls.patch"

DEPENDS += "mbedtls"
