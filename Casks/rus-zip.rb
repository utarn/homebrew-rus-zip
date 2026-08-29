cask "rus-zip" do
  version "1.0.5"

  # Apple Silicon only — Intel (osx-x64) builds are discontinued.
  url "https://github.com/utarn/rus-zip/releases/download/v1.0.5/RusZip-mac-arm64.zip"
  sha256 "ecfc966e9f7f6cfe49ae9f83427686c935d9079b7f5738269565b43d54b45bd5"

  name "RUS ZIP"
  desc "Modern cross-platform archive utility powered by Tar+Zstandard (.zrus) and Avalonia"
  homepage "https://github.com/utarn/rus-zip"

  app "RusZip.app"
  binary "#{appdir}/RusZip.app/Contents/MacOS/RusZip", target: "ruszip"

  zap trash: [
    "~/.config/rus-zip",
    "~/Library/Application Support/RUS ZIP",
    "~/Library/Preferences/com.ruszip.desktop.plist"
  ]
end
