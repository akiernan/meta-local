SUMMARY = "Intercepts syslog calls and forwards messages to given UNIX domain socket or file"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

SRC_URI = "git://github.com/Nordix/syslog-redirector.git;protocol=https;branch=master"
SRCREV = "8e12a2848f74218f5b2316a825139df969ec507f"

do_compile () {
	oe_runmake CFLAGS="${CFLAGS}" LDFLAGS="-shared ${LDFLAGS}"
}

do_install () {
	install -D -m 0755 ${S}/syslog-redirector.so ${D}${libexecdir}/syslog-redirector.so
}
