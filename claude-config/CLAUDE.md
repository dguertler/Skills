# Claude Global Config

## Sprache
Alle Antworten immer auf Deutsch ausgeben.

## Session-Hook Auto-Setup
Am Anfang jeder Session prüfen ob `.claude/hooks/session-start.sh` und `.claude/settings.json` im aktuellen Projektverzeichnis existieren. Wenn eine oder beide fehlen: sofort mit dem Inhalt aus Schritt 2 und 3 anlegen, chmod +x auf das Script setzen, committen und pushen. Wenn beide vorhanden: nichts tun.

## Token-Effizienz (Caveman Mode)

Skill `.claude/skills/caveman.md` **immer aktiv** — komprimierte Kommunikation, ~75 % weniger Tokens, volle technische Präzision bleibt erhalten. Nur Füllwörter und Floskeln fallen weg. Deaktivieren mit "stop caveman" / "normal mode".

## Skills-Repo — Verwendungszweck

Die Repo `dguertler/skills` dient **ausschließlich** zwei Zwecken:

1. **Neue Skills erstellen** — neue `.md`-Dateien unter `.claude/skills/` anlegen oder bestehende Skills weiterentwickeln.
2. **Skills initial lesen** — MD-Dateien aus dieser Repo einmalig lesen, um sie in ein Arbeitsrepo zu übertragen oder zu referenzieren.

**Projektspezifische Vorgaben gehören nicht hierher.** Alle projektbezogenen Regeln, Architektur-Entscheidungen, Env-Vars, Befehle etc. landen ausschließlich in der `CLAUDE.md` des jeweiligen Arbeitsrepos (z. B. `dguertler/garmin-training`).

## Push-Regel für Arbeitsrepos

Änderungen in Arbeitsrepos (z. B. `dguertler/garmin-training`) **immer direkt auf `main` / `master` pushen** — kein Feature-Branch, kein PR, es sei denn, der User fordert es explizit.

**Ausnahme Session-Vorgabe**: Wenn die aktive Session einen anderen Branch vorgibt (z. B. `claude/...`), erst auf diesen Branch pushen. Sobald der User im Chatverlauf einmalig das OK gibt ("auf main pushen" o. ä.), gilt das als dauerhafte Freigabe für die restliche Session — alle weiteren Commits gehen dann direkt auf `main`, ohne erneute Rückfrage.
