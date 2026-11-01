cask "burnish" do
  version :latest
  sha256 :no_check

  url "https://github.com/EnigmaticZee/Burnish/releases/latest/download/Burnish.dmg"
  name "Burnish"
  desc "Menu bar app that finds and installs updates for other apps"
  homepage "https://enigmaticzee.github.io/Burnish/"

  depends_on macos: :sonoma

  app "Burnish.app"

  uninstall quit: "io.github.enigmaticzee.Burnish"

  zap trash: [
    "~/Library/Application Support/Burnish",
    "~/Library/Caches/io.github.enigmaticzee.Burnish",
    "~/Library/Caches/io.github.enigmaticzee.Burnish.Widget",
    "~/Library/HTTPStorages/io.github.enigmaticzee.Burnish",
    "~/Library/HTTPStorages/io.github.enigmaticzee.Burnish.binarycookies",
    "~/Library/Preferences/io.github.enigmaticzee.Burnish.plist",
    "~/Library/WebKit/io.github.enigmaticzee.Burnish",
  ]
end
