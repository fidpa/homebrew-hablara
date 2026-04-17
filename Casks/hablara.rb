# ============================================================================
# Hablará Homebrew Cask
# ============================================================================
# Offizielles Cask für Hablará - KI-gestützte Spracherkennung
#
# Installation: brew install --cask fidpa/hablara/hablara
# ============================================================================

cask "hablara" do
  version "1.7.3"
  sha256 "dd3e9cde32fbc862091bbd61311d81dd0abf051345962efb46300dc6f2c6bb8f"

  url "https://github.com/fidpa/hablara-releases/releases/download/v#{version}/Hablara_#{version}_universal.dmg"
  name "Hablará"
  desc "KI-gestützte Spracherkennung mit lokaler Analyse"
  homepage "https://github.com/fidpa/hablara-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  depends_on macos: ">= :catalina"

  app "Hablara.app"

  zap trash: [
    "~/Library/Application Support/com.fidpa.hablara",
    "~/Library/Caches/com.fidpa.hablara",
    "~/Library/Preferences/com.fidpa.hablara.plist",
    "~/Library/Saved Application State/com.fidpa.hablara.savedState",
    "~/Library/WebKit/com.fidpa.hablara",
    "~/Library/Logs/com.fidpa.hablara",
    "~/Hablara",
  ]

  caveats <<~EOS
     _  _      _    _
    | || |__ _| |__| |__ _ _ _ __ _
    | __ / _` | '_ \\ / _` | '_/ _` |
    |_||_\\__,_|_.__/_\\__,_|_| \\__,_|

      Finde heraus, was du sagst.
  EOS
end