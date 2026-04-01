# ============================================================================
# Hablará Homebrew Cask
# ============================================================================
# Offizielles Cask für Hablará - KI-gestützte Spracherkennung
#
# Installation: brew install --cask fidpa/hablara/hablara
# ============================================================================

cask "hablara" do
  version "1.5.4"
  sha256 "4f94a6a1799d7cc9e99df41c5663529122f17414d9ca686424daf3801b29c8ee"

  url "https://github.com/fidpa/hablara/releases/download/v#{version}/Hablara_#{version}_universal.dmg"
  name "Hablará"
  desc "KI-gestützte Spracherkennung mit lokaler Analyse"
  homepage "https://github.com/fidpa/hablara"

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