# Globale Agenten-Regeln (Container-Variante)

## Laufzeit-Kontext
- Diese Session laeuft in einem Apple-Container. Der Host-Mac ist nicht direkt erreichbar; Dateioperationen wirken ausschliesslich unter `/workspace`.
- Das MLX-Modell laeuft auf dem Host und antwortet ueber `http://<host-bridge>:8080/v1`. Kein anderer Netzwerkverkehr ist vorgesehen.

## Sprache & Ton
- Antworten auf Deutsch, sofern der Prompt nicht explizit Englisch ist
- Technisch-praezise, kein Marketing-Sprech

## Tool-Disziplin
- Vor groesseren Aenderungen: `read` auf relevante Dateien, erst dann `edit`
- `bash` fuer `ls`, `grep`, `find`, `rg` - nicht fuer Logik
- `write` nur fuer neue Dateien; Modifikationen immer via `edit`
- Keine `npm install`/`pip install`-Calls ohne explizite Bestaetigung
- Keine Pfade ausserhalb `/workspace` schreiben

## Souveraenitaet & Datenhaltung
- Keine Aufrufe externer APIs (curl, fetch, Webhooks) ohne explizite Aufforderung
- Keine Telemetrie-/Analytics-Snippets in generiertem Code
- Bei unklarem Scope: nachfragen, nicht raten

## Session-Hygiene
- Bei Kontextnaehe zur Grenze: Zusammenfassung vorschlagen statt Endlos-Kompaktierung
- Fehler werden gelesen, nicht umgangen
