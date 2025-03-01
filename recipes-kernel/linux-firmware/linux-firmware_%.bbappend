SRC_URI += "https://github.com/armbian/firmware/raw/refs/heads/master/rtl_bt/rtl8723ds_config.bin;name=config \
            https://github.com/armbian/firmware/raw/refs/heads/master/rtl_bt/rtl8723ds_fw.bin;name=fw"

SRC_URI[config.sha256sum] = "7d1e18df7654da8f6382520841bb535f2d1246fc8495e3ae652f7b23e820168d"
SRC_URI[fw.sha256sum] = "19c1bed7a9359b1a021c20f81b525bdebf5067f9021716991d94be9101f76e63"

do_install:append() {
	install -m0644 ${UNPACKDIR}/rtl8723ds_config.bin ${D}${nonarch_base_libdir}/firmware/rtl_bt
	install -m0644 ${UNPACKDIR}/rtl8723ds_fw.bin ${D}${nonarch_base_libdir}/firmware/rtl_bt
}
