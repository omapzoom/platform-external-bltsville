AC_PREREQ([2.68])

dnl initialize autoconf
AC_INIT([bltsville_hw2d],[1.0.0],[http://www.ti.com])
LT_INIT([disable-static dlopen pic-only])

AC_CONFIG_MACRO_DIR([m4])

dnl define PACKAGE_VERSION_* variables
dnl AS_VERSION

dnl can autoconf find the source ?
AC_CONFIG_SRCDIR([gcbv/gcmain.c])

dnl AM_MAINTAINER_MODE only provides the option to configure to enable it
AM_MAINTAINER_MODE

dnl sets host_*, target_ variables
AC_CANONICAL_TARGET

dnl initialize automake
AM_INIT_AUTOMAKE([foreign])

dnl use pretty build output with automake >= 1.11
m4_ifdef([AM_SILENT_RULES],[AM_SILENT_RULES([yes])],
  [AM_DEFAULT_VERBOSITY=1
   AC_SUBST(AM_DEFAULT_VERBOSITY)])

dnl find a compiler
AC_PROG_CC
AC_PROG_LN_S
AM_PROG_AS
LT_INIT

dnl *** autotools stuff ****
dnl allow for different autotools
dnl AS_AUTOTOOLS_ALTERNATE

dnl *** checks for platform ***
AC_DEFINE_UNQUOTED(CPU_`echo $target_cpu | tr a-z- A-Z_`,[1])
AC_DEFINE_UNQUOTED(OS_` echo $target_os  | tr a-z- A-Z_`,[1])

dnl *** checks for programs ***
AC_PROG_INSTALL

AC_PROG_CXX
AC_PROG_RANLIB
AC_CHECK_FUNCS([memset])
AC_CHECK_FUNCS([strcasecmp])
AC_CHECK_HEADERS([fcntl.h])
AC_CHECK_HEADERS([stdint.h])
AC_CHECK_HEADERS([stdlib.h])
AC_CHECK_HEADERS([string.h])
AC_CHECK_HEADERS([sys/ioctl.h])
AC_CHECK_HEADERS([unistd.h])
AC_C_INLINE
#AC_FUNC_MALLOC
AC_HEADER_STDBOOL
AC_TYPE_INT64_T
AC_TYPE_PID_T
AC_TYPE_SIZE_T
AC_TYPE_UINT64_T
AC_SUBST([LIBTOOL_DEPS])
AC_ENABLE_SHARED
AC_DISABLE_STATIC

dnl Check for pkgconfig first
AC_CHECK_PROG([HAVE_PKGCONFIG], [pkg-config], [yes], [no])

dnl *** checks for libraries ***
dnl Check for libdrm
#PKG_CHECK_MODULES(DRM, libdrm libdrm_omap)

dnl Check for X11/libdri2
#PKG_CHECK_MODULES(X11, x11 dri2, [HAVE_X11=yes], [HAVE_X11=no])
#if test "x$HAVE_X11" = "xyes"; then
#  AC_DEFINE(HAVE_X11, 1, [Have X11 support])
#else
#  AC_MSG_WARN([Building without X11 support])
#fi
#AM_CONDITIONAL(ENABLE_X11, [test "x$HAVE_X11" = xyes])

dnl Check for wayland
#PKG_CHECK_MODULES(WAYLAND, wayland-client >= 0.95.0, [HAVE_WAYLAND=yes], [HAVE_WAYLAND=no])
#if test "x$HAVE_WAYLAND" = "xyes"; then
#  AC_DEFINE(HAVE_WAYLAND, 1, [Have Wayland support])
#else
#  AC_MSG_WARN([Building without Wayland support])
#fi
#AM_CONDITIONAL(ENABLE_WAYLAND, [test "x$HAVE_WAYLAND" = xyes])

dnl *** checks for header files ***
dnl check if we have ANSI C header files
AC_HEADER_STDC

dnl *** checks for types/defines ***

dnl *** checks for structures ***

dnl *** checks for compiler characteristics ***

dnl *** checks for library functions ***

dnl *** checks for dependancy libraries ***

dnl *** set variables based on configure arguments ***


AC_CONFIG_FILES([
libbltsville_hw2d.pc
Makefile
])
AC_OUTPUT
