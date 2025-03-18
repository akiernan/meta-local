FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KMACHINE:qemuarm64-cortex-a35 = "qemuarm64"
COMPATIBLE_MACHINE:qemuarm64-cortex-a35 = "qemuarm64-cortex-a35"

SRC_URI:append:rock-pi-s = " file://rtw88_8723ds.cfg file://bt-rtl.cfg"
