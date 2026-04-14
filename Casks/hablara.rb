# ============================================================================
# Hablará Homebrew Cask
# ============================================================================
# Offizielles Cask für Hablará - KI-gestützte Spracherkennung
#
# Installation: brew install --cask fidpa/hablara/hablara
# ============================================================================

cask "hablara" do
  version "1.7.1"
  sha256 "eabafb10df6c89e0818c4df30bcc4ab0ef4d56a4f8adceee985aa3f61b421774"

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