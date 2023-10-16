class Gorpipe < Formula
  desc ""
  homepage "https://github.com/gorpipe/gor"
  url "https://github.com/gorpipe/gor-spark/releases/download/v1.3.8/gorshell-3.10.3-dist.zip"
  sha256 "1dbdcd4c7172f3fa8b892ee3c2fb311df370c170034ef2fbbcddeb2602044b03"
  version "3.10.3"

  def install
    prefix.install Dir["*"]
    #bin.install_symlink prefix/"bin/gorpipe"
  end

  test do
    system "gorpipe"
  end
end
