# Claude Global Config

Globale Regeln für alle Projekte und Repos

## Sprache

Alle Antworten immer auf **Deutsch** ausgeben — unabhängig davon, in welcher Sprache der User schreibt.

## Design-Skills (Pflicht bei UI-Arbeit)

Immer wenn eine neue HTML-Seite, Next.js-Page oder UI-Komponente erstellt oder grundlegend überarbeitet wird:

1. **Zuerst** den Skill `.claude/skills/frontend-design.md` anwenden — Designplan erarbeiten (Palette, Typografie, Layout, Signatur-Element), gegen generische Defaults prüfen, erst dann coden.
2. **Danach** den Skill `.claude/skills/web-design-guidelines.md` ausführen — Vercel Web Interface Guidelines via WebFetch laden und die erstellten Dateien dagegen prüfen. Befunde im Format `datei:zeile` ausgeben und Verstöße direkt beheben.

Diese Reihenfolge ist verbindlich: erst `frontend-design`, dann `web-design-guidelines`.

## Token-Effizienz (Caveman Mode)

Skill `.claude/skills/caveman.md` **immer aktiv** — komprimierte Kommunikation, ~75 % weniger Tokens, volle technische Präzision bleibt erhalten. Nur Füllwörter und Floskeln fallen weg. Deaktivieren mit "stop caveman" / "normal mode".

## Skills-Repo — Verwendungszweck

Die Repo `dguertler/skills` dient **ausschließlich** zwei Zwecken:

1. **Neue Skills erstellen** — neue `.md`-Dateien unter `.claude/skills/` anlegen oder bestehende Skills weiterentwickeln.
2. **Skills initial lesen** — MD-Dateien aus dieser Repo einmalig lesen, um sie in ein Arbeitsrepo zu übertragen oder zu referenzieren.

**Projektspezifische Vorgaben gehören nicht hierher.** Alle projektbezogenen Regeln, Architektur-Entscheidungen, Env-Vars, Befehle etc. landen ausschließlich in der `CLAUDE.md` des jeweiligen Arbeitsrepos (z. B. `dguertler/garmin-training`).
