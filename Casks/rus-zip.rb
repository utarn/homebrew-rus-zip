cask "rus-zip" do
  version "1.0.8"

  # Apple Silicon only — Intel (osx-x64) builds are discontinued.
  url "https://github.com/utarn/rus-zip/releases/download/v1.0.8/RusZip-mac-arm64.zip"
  sha256 "8f079ea1604a91243101713b18bac76607540725949d81359e7200272ec95df6"

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
