require 'formula'

class Taglib < Formula
  url 'http://developer.kde.org/~wheeler/files/src/taglib-1.7.tar.gz'
  md5 '6a7e312668f153fa905a81714aebc257'
  homepage 'http://developer.kde.org/~wheeler/taglib.html'

  depends_on 'cmake' => :build

  def install
    ENV.append 'CXXFLAGS', "-DNDEBUG=1"
    system "cmake", "-DWITH_MP4=ON", "-DWITH_ASF=ON", *std_cmake_args
    system "make"
    system "make install"
  end
end
