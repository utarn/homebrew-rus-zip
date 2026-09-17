cask "rus-zip" do
  version "1.0.11"

  # Apple Silicon only — Intel (osx-x64) builds are discontinued.
  url "https://github.com/utarn/rus-zip/releases/download/v1.0.11/RusZip-mac-arm64.zip"
  sha256 "05d0983281afffbfce0536636fa684b850823324abf2f0f27852d18a5cce851c"

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
