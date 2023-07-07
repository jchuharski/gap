# This file has been generated by the GAP build system,
# DO NOT EDIT MANUALLY!

# This file exists for use by the GAP compiler `gac` and also by the build
# systems of GAP packages.
#
# It is deliberately written in a way that makes it usable from shell scripts
# *and* Makefiles: It only consists of comment lines like this one, starting
# with a '#'; blank linkes; or lines containing assignments of the form
#  VARIABLE_NAME="CONTENT"


# GAParch: the "architecture" of this GAP build. First comes the result of
# `config.guess`. Next one of the strings "-default", "-hpcgap", "-julia" to
# indicate various major build variants of GAP. Then the ABI (32 or 64). Then
# a string of the form '-kvNNN' where NNN is the GAP kernel major version.
#
# Used to decide where to load package binaries from (to support installing
# binaries for multiple architectures in parallel on a single computer).
GAParch=x86_64-pc-linux-gnu-default64-kv8

# GAP_ABI: indicates whether GAP was built in 32 or 64 bit mode.
# Deprecated, may be removed in a future GAP release.
# Possible values: 32, 64
GAP_ABI=64

# GAP_HPCGAP: indicates whether HPC-GAP support was compiled in.
# Possible values: yes, no
GAP_HPCGAP=no

# GAP_VERSION: GAP version.
GAP_VERSION="4.12.2"

# GAP_BUILD_VERSION: GAP build version. For releases, this is identical to
# GAP_VERSION. For development builds, it is the version followed by extra
# data indicating which git commit the build was based on
GAP_BUILD_VERSION="4.12.2"

# GAP_KERNEL_{MAJOR,MINOR}_VERSION: the GAP kernel version (both integer values).
GAP_KERNEL_MAJOR_VERSION=8
GAP_KERNEL_MINOR_VERSION=0

# GAP: path to the `gap` executable (may be a shell script)
GAP="/home/gridsan/jchuharski/gap/gap-4.12.2/gap"

# GAC: path to the `gac` executable (may be a shell script)
GAC="/home/gridsan/jchuharski/gap/gap-4.12.2/gac"

# File extension used by object files created by GAC
GAP_OBJEXT=o

# Build flags for use by `gac` resp. package build systems: these correspond to
# the usual variables as used by e.g. autotools, with the added prefix `GAP_`.
GAP_CC="gcc "
GAP_CXX="g++ -std=gnu++11 "
GAP_CFLAGS="  -g -O2"
GAP_CXXFLAGS="  -g -O2"
GAP_CPPFLAGS=" -I/home/gridsan/jchuharski/gap/gap-4.12.2/build -I/home/gridsan/jchuharski/gap/gap-4.12.2/src -I/home/gridsan/jchuharski/gap/gap-4.12.2 -DUSE_GASMAN=1  "
GAP_LDFLAGS=" "
GAP_LIBS=" -lm -ldl -lutil "

# Extra flags for use by `gac`
GAC_CFLAGS="-fPIC"
GAC_LDFLAGS="-shared -fPIC"

# For packages: the search prefix for GMP used by GAP
# (this is left empty when none was specified, or when
# GAP is installed via 'make install')
GMP_PREFIX=""
