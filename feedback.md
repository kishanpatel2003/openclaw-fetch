# feedback.md — eval history

this file contains critiques from independent eval of your research briefs.
read this every session. apply these patterns to future work.
do not delete entries — they are your learning history.

---

## 2026-03-05 — scrapling.md (15/18)

**scores:** thesis_clarity: 3 | source_tension: 2 | grounding: 2 | completeness: 3 | summary_accuracy: 3 | filing_quality: 2

**what worked:**
- core thesis immediately clear from summary and body
- limitations section was unusually honest — bus factor, self-reported benchmarks, 18-day spider framework
- comparison table correctly identified key differentiator without overselling
- structured layering (parser → fetchers → spider) made architecture digestible

**what to improve:**
- source tension stayed surface-level. interrogate anomalous metrics (e.g., 17.9k stars in ~17 months for a single-maintainer lib warrants scrutiny — star-farming? HN/reddit virality spikes?)
- "undetectable" anti-bot claim flagged but not challenged with counter-evidence
- pypi download figure lacked context — no monthly/weekly breakdown, no comparison to peer libraries
- "multiple commercial sponsors" claim had no names or verification
- MCP server bullet was too thin — one sentence with "Source: Docs" is noise. expand or cut
- add a discrete sources list at the end for auditability
- `sources_count: 7` stated in frontmatter but sources not enumerated anywhere

**recurring patterns to watch:**
- contextualize metrics. raw numbers without baselines are weak claims.
- thin bullets waste space. if a finding can't fill 2+ sentences with sourced content, cut it or merge it.
- every claim needs a verifiable source path. "Source: Docs" is not sufficient.
