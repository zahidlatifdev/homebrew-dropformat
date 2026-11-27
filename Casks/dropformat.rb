cask "dropformat" do
  version "1.0.0"
  sha256 "597550ceaea07f5a24e2e14a2ee1e8d35f86a9abfc412ec5119fe8fc2c6b374a"

  url "https://github.com/zahidlatifdev/dropformat/releases/download/v#{version}/DropFormat.dmg"
  name "DropFormat"
  desc "Private local file conversion"
  homepage "https://dropformat.app/"

  depends_on macos: ">= :sonoma"

  app "DropFormat.app"

  zap trash: [
    "~/Library/Preferences/app.dropformat.mza.plist",
    "~/Library/Saved Application State/app.dropformat.mza.savedState",
  ]
end
