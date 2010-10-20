require 'formula'

class EmacsW3m <Formula
  url 'http://emacs-w3m.namazu.org/emacs-w3m-1.4.4.tar.gz'
  homepage 'http://emacs-w3m.namazu.org/'
  md5 '6e592a9c0ab22fb532ebc3bcb21a45b1'

depends_on 'emacs'
depends_on 'w3m'

  def install
    system "./configure", "--disable-debug", "--disable-dependency-tracking", "--prefix=#{prefix}"
    system "make install"
  end
end
