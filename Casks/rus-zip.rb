cask "rus-zip" do
  version "1.0.7"

  # Apple Silicon only — Intel (osx-x64) builds are discontinued.
  url "https://github.com/utarn/rus-zip/releases/download/v1.0.7/RusZip-mac-arm64.zip"
  sha256 "e3b3ed50496d3379863b3eef2b7123d08744609ba67959e30c3182b02984755a"

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
