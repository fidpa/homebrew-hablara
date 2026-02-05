# ============================================================================
# Hablará Homebrew Cask
# ============================================================================
# Offizielles Cask für Hablará - KI-gestützte Spracherkennung
#
# Installation: brew tap fidpa/hablara && brew install --cask hablara
# ============================================================================

cask "hablara" do
  version "1.0.4"
  sha256 "REPLACE_WITH_ACTUAL_SHA256"

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
    Hablará benötigt Mikrofon-Berechtigung.

    Beim ersten Start:
    1. Systemeinstellungen → Datenschutz & Sicherheit → Mikrofon
    2. Hablará aktivieren

    Für Ollama-Integration (empfohlen):
      brew install ollama
      ollama pull qwen2.5:7b

    Aufnahmen werden gespeichert in:
      ~/Library/Application Support/Hablara/recordings

    ⚠️ Hinweis: 'brew uninstall --zap hablara' löscht auch alle Aufnahmen.
    Sichere deine Dateien vorher!
  EOS
end
