class RusZip < Formula
  desc "Cross-platform compression suite powered by Tar+Zstandard (.zrus)"
  homepage "https://github.com/utarn/rus-zip"
  version "1.0.6"
  license "Proprietary"

  on_macos do
    # Apple Silicon only — Intel (osx-x64) builds are discontinued.
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.6/rus-zip-cli-osx-arm64.zip"
    sha256 "6ac5362ea05781451e231a1cc6309116bb694363d392528aafece5191a4f69f1"
  end

  on_linux do
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.6/rus-zip-cli-linux-x64"
    sha256 "6441265bd01581ee945384688d58d3a01facd58a32e0fece67f7f126f802300a"
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
