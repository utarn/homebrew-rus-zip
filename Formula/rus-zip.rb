class RusZip < Formula
  desc "Cross-platform compression suite powered by Tar+Zstandard (.zrus)"
  homepage "https://github.com/utarn/rus-zip"
  version "1.0.7"
  license "Proprietary"

  on_macos do
    # Apple Silicon only — Intel (osx-x64) builds are discontinued.
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.7/rus-zip-cli-osx-arm64.zip"
    sha256 "b977803f1e42763d7c5ce6f20afe992e0641dd2d7c30a67e0c336cb6e4a48ccf"
  end

  on_linux do
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.7/rus-zip-cli-linux-x64"
    sha256 "cbb3f626d3fc8d9ebdb62944ba51eb1663ec0271cc9b768b16b8299d7f2b5e90"
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
