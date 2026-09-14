class RusZip < Formula
  desc "Cross-platform compression suite powered by Tar+Zstandard (.zrus)"
  homepage "https://github.com/utarn/rus-zip"
  version "1.0.8"
  license "Proprietary"

  on_macos do
    # Apple Silicon only — Intel (osx-x64) builds are discontinued.
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.8/rus-zip-cli-osx-arm64.zip"
    sha256 "cb638266229ec4b20d0af2f5dc26cf8192dbf16083f155dddae14788f714ba17"
  end

  on_linux do
    url "https://github.com/utarn/rus-zip/releases/download/v1.0.8/rus-zip-cli-linux-x64"
    sha256 "d51f154351f97e2505b1fac543cd2a4396e5304c88e12721c178d3c3a9505569"
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
