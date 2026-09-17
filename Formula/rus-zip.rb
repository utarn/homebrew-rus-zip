class RusZip < Formula
  desc "Cross-platform compression suite powered by Tar+Zstandard (.zrus)"
  homepage "https://github.com/utarn/rus-zip"
  version "1.0.11"
  license "Proprietary"

  on_macos do
    # Apple Silicon only — Intel (osx-x64) builds are discontinued.
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.11/rus-zip-cli-osx-arm64.zip"
    sha256 "4127fd863a87bc0ce9fced5e817e9810c4906f210f49671ec8a1b5e383e53c97"
  end

  on_linux do
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.11/rus-zip-cli-linux-x64"
    sha256 "2ced8a10faa6745065ebbe1a6a3258868127a3b205b79fd7ca93ea3de52460ec"
  end

  def install
    if OS.mac?
      bin.install "rus-zip"
    else
      bin.install "rus-zip-cli-linux-x64" => "rus-zip"
    end
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/rus-zip --version")
  end
end
