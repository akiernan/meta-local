FILESEXTRAPATHS:prepend := "${THISDIR}/${PN}:"

SRC_URI:append:rock-pi-s = " file://rtw88_8723ds.cfg file://bt-rtl.cfg"
