class RusZip < Formula
  desc "Cross-platform compression suite powered by Tar+Zstandard (.zrus)"
  homepage "https://github.com/utarn/rus-zip"
  version "1.0.5"
  license "Proprietary"

  on_macos do
    # Apple Silicon only — Intel (osx-x64) builds are discontinued.
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.5/rus-zip-cli-osx-arm64.zip"
    sha256 "672d1d1843a7ab1c1ad076e9cde61f6a17f7d0ef8ad84a0c49149e6653c8142b"
  end

  on_linux do
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.5/rus-zip-cli-linux-x64"
    sha256 "01ff50462ae8a0b3f2188739b651911fa251facda4c1edbdc9dd533e0fe9908b"
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
