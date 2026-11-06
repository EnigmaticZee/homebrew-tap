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
    Open Paws Off from Applications, then grant it Accessibility access so it
    can pause your keyboard.
  EOS
end
