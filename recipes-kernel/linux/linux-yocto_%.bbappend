FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

KMACHINE:qemuarm64-cortex-a35 = "qemuarm64"
KMACHINE:qemuarm-cortex-a35-32 = "qemuarma15"

COMPATIBLE_MACHINE:qemuarm64-cortex-a35 = "qemuarm64-cortex-a35"
COMPATIBLE_MACHINE:qemuarm-cortex-a35-32 = "qemuarm-cortex-a35-32"

SRC_URI:append:rock-pi-s = " file://rtw88_8723ds.cfg file://bt-rtl.cfg"
