# GNUmakefile.  Generated from GNUmakefile.in by configure.

# This file is the part of the GAP build system. It is the first file
# processed by GNU make when build GAP. If you want to understand the
# build system, you can begin tracing it from here.
#
# To learn more about the GAP build system, see README.buildsys.md


#
# Set lots of variables to values computed by the configure script
#

# GAP specific
SYS_IS_CYGWIN32 = 
ABI = 64
ABI_CFLAGS = 

# HPC-GAP specific
HPCGAP = no

# garbage collector source files
GC_SOURCES = src/gasman.c src/sysmem.c

# compatibility mode
COMPAT_MODE = yes
GAPARCH = aarch64-apple-darwin20-default64-kv8

# maintainer mode
MAINTAINER_MODE = yes

# GAP version and release date
GAP_VERSION = 4.12.2
GAP_RELEASEDAY = 2022-12-18

# libtool library version
GAP_LIBTOOL_CURRENT = 8
GAP_LIBTOOL_AGE = 0

# GAP kernel version
GAP_KERNEL_MINOR_VERSION = 0
GAP_KERNEL_MAJOR_VERSION = 8

# autoconf package metadata
PACKAGE_BUGREPORT = support@gap-system.org
PACKAGE_NAME = GAP
PACKAGE_STRING = GAP 4.12.2
PACKAGE_TARNAME = gap-4.12.2
PACKAGE_URL = https://www.gap-system.org/
PACKAGE_VERSION = 4.12.2

# autoconf host information
host = aarch64-apple-darwin20.6.0
host_alias = 
host_cpu = aarch64
host_os = darwin20.6.0
host_vendor = apple

# compile and linker flags
CFLAGS = -g -O2
CXXFLAGS = -g -O2
CPPFLAGS = 
LDFLAGS = 
LIBS = 
GAP_DEFINES =  -DUSE_GASMAN=1

WARN_CFLAGS = -fno-strict-aliasing -Wall -Wextra -Warray-bounds -Wdouble-promotion -Wformat-nonliteral -Wformat-security -Wformat=2 -Winit-self -Wno-inline -Wmissing-field-initializers -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-variable-declarations -Wno-pragmas -Wpacked -Wpointer-arith -Wredundant-decls -Wreturn-type -Wshadow -Wno-sign-compare -Wstrict-aliasing -Wundef -Wno-unused-parameter -Wwrite-strings -Wno-implicit-fallthrough -Wimplicit-function-declaration -Wnested-externs -Wold-style-definition -Wstrict-prototypes -Wno-error=inline -Wno-error=pragmas -Wno-error=sign-compare -Wno-error=unused-parameter -Wno-error=implicit-fallthrough
WARN_CXXFLAGS = -fno-strict-aliasing -Wall -Wextra -Warray-bounds -Wdouble-promotion -Wformat-nonliteral -Wformat-security -Wformat=2 -Winit-self -Wno-inline -Wmissing-field-initializers -Wmissing-format-attribute -Wmissing-include-dirs -Wmissing-variable-declarations -Wno-pragmas -Wpacked -Wpointer-arith -Wredundant-decls -Wreturn-type -Wshadow -Wno-sign-compare -Wstrict-aliasing -Wundef -Wno-unused-parameter -Wwrite-strings -Wextra-semi

BUILD_GMP = no
GMP_CPPFLAGS = -I/opt/homebrew/include
GMP_LDFLAGS = -L/opt/homebrew/lib
GMP_LIBS = -lgmp
GMP_PREFIX = /opt/homebrew

BUILD_ZLIB = no
ZLIB_CPPFLAGS = 
ZLIB_LDFLAGS = 
ZLIB_LIBS = -lz

READLINE_CPPFLAGS = -I/opt/homebrew/opt/readline/include
READLINE_LDFLAGS = -L/opt/homebrew/opt/readline/lib
READLINE_LIBS = -lreadline

JULIA = 
JULIA_VERSION = 
JULIA_CFLAGS = 
JULIA_LDFLAGS = 
JULIA_LIBS = 

BUILD_BOEHM_GC = 
BOEHM_GC_CPPFLAGS = 
BOEHM_GC_LDFLAGS = 
BOEHM_GC_LIBS = 

BUILD_LIBATOMIC_OPS = 
LIBATOMIC_OPS_CPPFLAGS = 
LIBATOMIC_OPS_LDFLAGS = 
LIBATOMIC_OPS_LIBS = 

PTHREAD_CFLAGS = 
PTHREAD_LIBS = 

# build tools
CC = gcc 
CXX = g++ -std=gnu++11 
INSTALL = /usr/bin/install -c
MKDIR_P = ./cnf/install-sh -c -d
SED = /usr/bin/sed
SHELL = /bin/sh

# for GNU libtool
AR = ar
AS = as
AWK = awk
LD = /Library/Developer/CommandLineTools/usr/bin/ld
LIBTOOL = $(SHELL) $(top_builddir)/libtool
LIPO = lipo
LN_S = ln -s
LT_SYS_LIBRARY_PATH = 
LTLIBOBJS = 
MANIFEST_TOOL = :
NM = /usr/bin/nm -B
NMEDIT = nmedit
OBJDUMP = objdump
OTOOL = otool
OTOOL64 = :
RANLIB = ranlib
STRIP = strip

# misc
EXEEXT = 
LIBOBJS = 
OBJEXT = o
PATH_SEPARATOR = :
program_transform_name = s,x,x,
target_alias = 

build = aarch64-apple-darwin20.6.0
build_alias = 
build_cpu = aarch64
build_os = darwin20.6.0
build_vendor = apple

# build paths
abs_builddir = /Users/jakechuharski/Desktop/gap-4.12.2
abs_srcdir = /Users/jakechuharski/Desktop/gap-4.12.2
builddir = .
srcdir = .

# for compatibility: top_builddir is used by libtool for LIBTOOL variable;
# keeping the others makes it easier to "git bisect" back and forth
top_builddir = .
top_srcdir = .
abs_top_builddir = /Users/jakechuharski/Desktop/gap-4.12.2
abs_top_srcdir = /Users/jakechuharski/Desktop/gap-4.12.2

# install paths
bindir = ${exec_prefix}/bin
datadir = ${datarootdir}
datarootdir = ${prefix}/share
docdir = ${datarootdir}/doc/${PACKAGE_TARNAME}
exec_prefix = ${prefix}
htmldir = ${docdir}
includedir = ${prefix}/include
infodir = ${datarootdir}/info
libdir = ${exec_prefix}/lib
libexecdir = ${exec_prefix}/libexec
localedir = ${datarootdir}/locale
localstatedir = ${prefix}/var
mandir = ${datarootdir}/man
pdfdir = ${docdir}
prefix = /usr/local
psdir = ${docdir}
sbindir = ${exec_prefix}/sbin
sharedstatedir = ${prefix}/com
sysconfdir = ${prefix}/etc


#
# Set vpath values to make GNU make read source files from $(srcdir).
#
# The vpath directives below ensure that if we reference src/foo.c, then if it
# is not found in the build dir (e.g. because we are doing an out-of-tree
# build), GNU make automatically looks for $(srcdir)/src/foo.c
# #
# Note that `vpath' is a GNU make extension. Unlike VPATH, it can be
# restricted to certain file extensions. This way, we can mix in-tree and
# out-of-tree builds without accidentally picking up e.g. *.o files from the
# wrong tree. We still have to be careful about build/config.h, though.
#
vpath src/%.h $(srcdir)
vpath src/%.c $(srcdir)
vpath src/%.cc $(srcdir)
vpath src/%.s $(srcdir)

vpath src/hpc/%.h $(srcdir)
vpath src/hpc/%.c $(srcdir)
vpath src/hpc/%.cc $(srcdir)
vpath src/hpc/%.s $(srcdir)


#
# Finally, include the actual make rules.
#
include $(srcdir)/Makefile.rules
