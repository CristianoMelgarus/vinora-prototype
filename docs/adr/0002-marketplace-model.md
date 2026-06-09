# Third-party marketplace, not retailer

Vinora operates as a discovery and marketplace layer for verified third-party merchants, not as a retailer owning inventory. We connect demand (users) to supply (existing Spanish wine merchants) rather than building our own logistics, warehousing, or stock management. This reduces capital intensity, speeds market entry, and focuses Vinora on our core value: curation, information, and trust. In MVP, purchases happen via merchant redirect; Phase 2 may introduce integrated checkout with Vinora as the transactional layer while still passing fulfillment to merchants.

**Considered Options:**
- **Vertical retailer** — Own inventory, manage warehouse, handle shipping. Higher margin potential but heavy capex and operational complexity.
- **Pure affiliate** — Send traffic to merchants for commission, no curation or quality control. No trust, no differentiation.
- **Verified marketplace** — Curate verified merchants, aggregate offers, own the discovery layer. Balances trust, economics, and speed to market.

**Consequences:**
- All merchant offers must be verified (KYB process) before appearing
- Offer data is cached with freshness indicators ("last checked X ago")
- "Comprar" CTAs redirect to merchant sites in MVP
- Vinora tracks clicks and attributed purchases for commission
- Future integrated checkout (Phase 2) requires merchant technical integration, not just data feeds
