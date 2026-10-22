cask "frost" do
  version "0.2.1"
  sha256 "70d4abb231b60226c6a906e8ad0c65307c401f733cc01cd390581d5d64d7676f"

  url "https://github.com/ScienciaLAB/Frost/releases/download/v#{version}/Frost.zip"
  name "Frost"
  desc "Menu bar manager"
  homepage "https://sciencialab.github.io/Frost/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Frost.app"

  uninstall quit: "com.sciencialab.Frost"

  zap trash: [
    "~/Library/Caches/com.sciencialab.Frost",
    "~/Library/HTTPStorages/com.sciencialab.Frost",
    "~/Library/Preferences/com.sciencialab.Frost.plist",
  ]

  caveats <<~EOS
    Frost is not notarized by Apple yet, so macOS blocks its first launch.
    Clear the download flag before opening it:
      xattr -dr com.apple.quarantine #{appdir}/Frost.app
  EOS
end
