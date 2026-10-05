# ============================================================================
# Hablará Homebrew Cask
# ============================================================================
# Offizielles Cask für Hablará - KI-gestützte Spracherkennung
#
# Installation: brew install --cask fidpa/hablara/hablara
# ============================================================================

cask "hablara" do
  version "1.7.9"
  sha256 "abcbd536c2ba46630d4b48c57996d8245d0f0ac41f4f2b8785114720212f47a8"

  url "https://github.com/fidpa/hablara-releases/releases/download/v#{version}/hablara-#{version}-macos-universal-free.dmg"
  name "Hablará"
  desc "KI-gestützte Spracherkennung mit lokaler Analyse"
  homepage "https://github.com/fidpa/hablara-releases"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Hablara.app"

  zap trash: [
    "~/Hablara",
    "~/Library/Application Support/com.fidpa.hablara",
    "~/Library/Caches/com.fidpa.hablara",
    "~/Library/Logs/com.fidpa.hablara",
    "~/Library/Preferences/com.fidpa.hablara.plist",
    "~/Library/Saved Application State/com.fidpa.hablara.savedState",
    "~/Library/WebKit/com.fidpa.hablara",
  ]

  caveats <<~EOS
     _  _      _    _
    | || |__ _| |__| |__ _ _ _ __ _
    | __ / _` | '_ \\ / _` | '_/ _` |
    |_||_\\__,_|_.__/_\\__,_|_| \\__,_|

      Finde heraus, was du sagst.
  EOS
end
