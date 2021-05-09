class Gorpipe < Formula
  desc ""
  homepage "https://github.com/gorpipe/gor"
  url "https://github.com/gorpipe/gor-spark/releases/download/v1.3.6/gor-spark-3.10.1-dist.zip"
  sha256 "6bcfc20754b32faa780ff82ed3969dbb384b4e1c8d2b9ef6ddf10f0a1ed8f4c6"
  version "3.10.1"

  def install
    prefix.install Dir["*"]
    #bin.install_symlink prefix/"bin/gorpipe"
  end

  test do
    system "gorpipe"
  end
end
