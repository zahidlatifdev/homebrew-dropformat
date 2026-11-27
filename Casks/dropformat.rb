cask "dropformat" do
  version "1.0.0"
  sha256 "20d18c1832e2fc8438e31f9aec02fe8c57156f5fbc31dc13b29055f83d1c5b75"

  url "https://github.com/zahidlatifdev/homebrew-dropformat/releases/download/v#{version}/DropFormat.dmg"
  name "DropFormat"
  desc "Private local file conversion"
  homepage "https://dropformat.app/"

  depends_on macos: :sonoma

  app "DropFormat.app"

  zap trash: [
    "~/Library/Preferences/app.dropformat.mza.plist",
    "~/Library/Saved Application State/app.dropformat.mza.savedState",
  ]
end
