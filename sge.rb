require 'formula'

class Sge < Formula
  url 'http://www.digitalfanatics.org/cal/sge/files/sge030809.tar.gz'
  homepage 'http://www.digitalfanatics.org/cal/sge/'
  md5 'a76975665b6a2bf189130fa2c8821caf'

  depends_on "sdl"
  depends_on "sdl_image"

  def install
    system "make install"
  end

  def patches
    { :p0 => %w{https://gist.github.com/raw/963525/7b638e4100f9dd1a9d00560b98ea2ddd4375b2b0/sge_030809_freetype.patch
        https://gist.github.com/raw/963522/5b277a0a6b08a1c077fbe2c96eead4ef1d761856/sge-030809-build.patch
        https://gist.github.com/raw/787030/786bfe2497649ed84dafbe813faa1914d417e0b1/sge_makefile_mac_os_x.patch},
      :p1 => "https://gist.github.com/raw/963524/c03396e1fb8bb87e9f4ba92597d087f730c6c48b/sge_030809_cmap.patch"
    }
  end
end
