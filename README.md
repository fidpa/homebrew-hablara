# Homebrew Tap für Hablará

Offizielles Homebrew Tap für [Hablará](https://github.com/fidpa/hablara) - KI-gestützte Spracherkennung mit lokaler Analyse.

## Installation

```bash
brew install --cask fidpa/hablara/hablara
```

## Updates

```bash
brew upgrade --cask hablara
```

## Deinstallation

```bash
# Nur App entfernen (Aufnahmen bleiben erhalten)
brew uninstall --cask hablara

# Vollständig (inkl. Aufnahmen und Einstellungen)
brew uninstall --zap --cask hablara
```

## Troubleshooting

### Mikrofon-Berechtigung

Beim ersten Start muss die Mikrofon-Berechtigung erteilt werden:

1. Systemeinstellungen → Datenschutz & Sicherheit → Mikrofon
2. Hablará aktivieren

### Gatekeeper-Fehler

Die App ist signiert und notarisiert. Falls dennoch Probleme auftreten:

```bash
xattr -cr /Applications/Hablara.app
```

### Ollama Setup (optional)

Für lokale LLM-Verarbeitung:

```bash
brew install ollama
ollama pull qwen2.5:7b
```

Oder mit dem Quick-Setup-Script:

```bash
curl -fsSL https://raw.githubusercontent.com/fidpa/hablara/main/scripts/setup-ollama-quick.sh | bash
```

## Support

- [GitHub Issues](https://github.com/fidpa/hablara/issues)
- [Dokumentation](https://github.com/fidpa/hablara#readme)

## Lizenz

MIT License - siehe [Hablará Repository](https://github.com/fidpa/hablara) für Details.
