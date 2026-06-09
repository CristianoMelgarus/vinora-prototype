# Glass-based rating system

Vinora uses a 1-5 glass scale for all wine ratings, never stars or 100-point scores. Glasses are visually distinctive, culturally evocative of wine (unlike stars, which feel generic), and create stronger brand identity. The 5-point scale is accessible to mainstream users while providing enough granularity for meaningful comparison. PRO ratings appear alongside community ratings with a "PRO" badge, always secondary — reinforcing that Vinora is a community-first platform, not an elite critic publication.

**Considered Options:**
- **5-point star scale** — Familiar, but generic and overused in apps
- **100-point scale** — Standard in wine criticism (Wine Spectator, Parker), but creates elitism and intimidates casual users
- **5-point glass scale** — Accessible, on-brand, distinctive

**Consequences:**
- All UI components (cards, detail views, reviews) must render glasses consistently
- Rating aggregation uses simple average (no Bayesian adjustment in MVP)
- Glass visualization must work at small sizes (list views) and large (detail pages)
