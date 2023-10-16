class Gorpipe < Formula
  desc "Declarative query language for genomic and phenotypic tabular data"
  homepage "https://gorpipe.org"
  url "https://github.com/gorpipe/gor/releases/download/v4.5.0/gorscripts-4.5.0-dist.zip"
  sha256 "09f96aa55cbad852c45f201d18e2a95b64549959e6a4803d9be811a4cb26ff17"
  license "AGPL-3.0-only"
  head do
    url "https://github.com/gorpipe/gor.git", branch: "master"

    depends_on "gradle" => :build
  end

  depends_on "openjdk"

  resource "dbsnp_test.gor" do
    url "https://raw.githubusercontent.com/gorpipe/gor-test-data/7a1907aa4b61628f1c544d70f71f0c6289d44790/gor/dbsnp_test.gor"
    sha256 "2ea2c312afab99057fa7cfba9d8a1b32ecfa9b07d3e8106ee0f5b8d4a122017c"
  end

  def install
    if build.head?
      system "gradle", "installDist"
      prefix.install Dir["gorscripts/build/install/gorscripts/*"]
    else
      prefix.install Dir["*"]
    end
  end

  test do
    resource("dbsnp_test.gor").stage do
      system "#{bin}/gor", "query", "dbsnp_test.gor"
    end
  end
end
