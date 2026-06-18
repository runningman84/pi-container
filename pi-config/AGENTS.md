# Global Agent Rules (Container Variant)

## Runtime Context
- This session runs in an Apple container. The host Mac is not directly accessible; file operations apply only under `/workspace`.
- The MLX model runs on the host and responds via `http://<host-bridge>:8080/v1`. No other network traffic is intended.

## Language & Tone
- Respond in English.
- Technically precise, no marketing language.

## Tool Discipline
- Before larger changes: run `read` on relevant files first, then `edit`.
- Use `bash` for `ls`, `grep`, `find`, `rg`, not for logic.
- Use `write` only for new files; always use `edit` for modifications.
- No `npm install` or `pip install` calls without explicit confirmation.
- Do not write to paths outside `/workspace`.

## Sovereignty & Data Handling
- No external API calls (`curl`, `fetch`, webhooks) without explicit request.
- No telemetry or analytics snippets in generated code.
- If scope is unclear: ask, do not guess.

## Session Hygiene
- When context approaches the limit: suggest a summary instead of endless compacting.
- Errors are read, not bypassed.
