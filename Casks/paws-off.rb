cask "paws-off" do
  version :latest
  sha256 :no_check

  url "https://github.com/EnigmaticZee/PawsOff/releases/latest/download/PawsOff-mac.dmg"
  name "Paws Off"
  desc "Pause your keyboard with one click, for cleaning it or keeping pets off it"
  homepage "https://github.com/EnigmaticZee/PawsOff"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Paws Off.app"

  zap trash: [
    "~/Library/Preferences/local.pawsoff.plist",
  ]

  caveats <<~EOS
    Paws Off isn't notarized by Apple yet. If macOS won't open it, go to
    System Settings → Privacy & Security and click "Open Anyway".
    Then grant it Accessibility access so it can pause your keyboard.
  EOS
end
