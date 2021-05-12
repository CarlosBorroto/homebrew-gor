class Gorpipe < Formula
  desc ""
  homepage "https://github.com/gorpipe/gor"
  url "https://github.com/gorpipe/gor-spark/releases/download/v1.3.8/gor-spark-3.10.2-dist.zip"
  sha256 "09dd1e319294db0feb9b0434d102a3c2f83feda339a66d7afe06a061efb7251b"
  version "3.10.2"

  def install
    prefix.install Dir["*"]
    #bin.install_symlink prefix/"bin/gorpipe"
  end

  test do
    system "gorpipe"
  end
end
