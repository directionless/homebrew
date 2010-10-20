require 'formula'

class Bbdb <Formula
  url 'http://bbdb.sourceforge.net/bbdb-2.35.tar.gz'
  homepage 'http://bbdb.sourceforge.net/'
  md5 '5c4e7f2b2a6a8e25ff77351f533f3910'

depends_on 'emacs'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
