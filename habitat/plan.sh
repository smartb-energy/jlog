pkg_name=jlog
pkg_origin=smartb
pkg_version="2.2.2.1"
pkg_maintainer="smartB Engineering <dev@smartb.eu>"
pkg_license=('New BSD')
pkg_source="https://github.com/omniti-labs/${pkg_name}/archive/${pkg_version}.tar.gz"
pkg_shasum="44b639102eb9336b21e6ece54610403bf9de04987f809e7d8713050072fd2335"
pkg_include_dirs=(include)
pkg_lib_dirs=(lib)
pkg_build_deps=(
  core/make
  core/gcc
  core/autoconf
  core/jdk8
  core/lz4
  core/git
  core/perl
)

do_prepare() {
  export JAVA_HOME=$(hab pkg path core/jdk8)
  autoconf
}
