SUMMARY = "Intercepts syslog calls and forwards messages to given UNIX domain socket or file"
LICENSE = "Apache-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=86d3f3a95c324c9479bd8986968f4327"

SRC_URI = "git://github.com/Nordix/syslog-redirector.git;protocol=https;branch=master"
SRCREV = "8e12a2848f74218f5b2316a825139df969ec507f"

S = "${WORKDIR}/git"

do_compile () {
	oe_runmake CFLAGS="${CFLAGS}" LDFLAGS="-shared ${LDFLAGS}"
}

do_install () {
	install -d -m 0755 ${D}${libdir}
	install -m 0755 ${S}/syslog-redirector.so ${D}${libdir}/syslog-redirector.so
}

SOLIBS = ".so"
FILES_SOLIBSDEV = ""
