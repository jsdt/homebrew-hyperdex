require 'formula'

class Hyperleveldb < Formula
  homepage 'http://hyperdex.org'
  url 'http://hyperdex.org/src/hyperleveldb-1.2.2.tar.gz'

  def install
    ENV['PKG_CONFIG_PATH']="#{HOMEBREW_PREFIX}/lib/pkgconfig"
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make install"
  end
end
