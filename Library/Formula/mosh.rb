require 'formula'

class Mosh < Formula
  url 'https://github.com/quentinmit/mosh/tarball/ac7cd3aa2bcaf04b1b8fdbb2d41289039ca94550'
  #homepage 'http://mosh.mit.edu/'
  homepage 'https://github.com/keithw/mosh/'
  md5 '328edd001ea64cb4c17eacdf91ab8087'
  depends_on 'protobuf'
  depends_on 'boost'

  def install
    # configure.ac erroniously specifies a too-new version of
    # autoconf. Whomp it.
    inreplace 'configure.ac', /AC_PREREQ.*/, 'AC_PREREQ([2.61])'

    # There are some boost related warnings in here. They don't seem
    # important, so ignore them.
    inreplace 'src/frontend/Makefile.am', '-Werror', ''

    # go go autotools
    system "./autogen.sh"
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
