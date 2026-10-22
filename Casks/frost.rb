cask "frost" do
  version "0.2.2"
  sha256 "82b08e030b00092105b83d48756469fa6d2f487051df7c41208f404ca38c9032"

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
