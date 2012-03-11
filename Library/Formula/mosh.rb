require 'formula'

class Mosh < Formula
  #homepage 'http://mosh.mit.edu/'
  homepage 'https://github.com/keithw/mosh/'
  url 'https://github.com/downloads/keithw/mosh/mosh-0.98c.tar.gz'
  md5 'ea7b11726d64b9125f40e5bf9cbd4921'
  head 'https://github.com/keithw/mosh.git'

  depends_on 'pkg-config' => :build
  depends_on 'protobuf'
  depends_on 'boost'

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make install"
  end
end
