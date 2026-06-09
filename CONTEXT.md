# Vinora Context

## Domain Language

### Verified Merchant
A merchant that has completed formal **Know Your Business (KYB)** verification through Vinora. This includes:
- Business documentation (CIF/NIF, tax registration)
- Physical address verification
- Proof of legitimate wine retail activity
- Active business status in Spain

Verified merchants display a badge in the app and are the only merchants whose offers appear in Vinora.

### PRO
A wine professional whose reviews carry special distinction in the app. PRO status requires:
1. Verifiable wine industry credentials (sommelier certificates, WSET titles, winery employment, wine journalism)
2. Approval through Vinora's review process

PRO reviews appear with a badge and are displayed alongside (but secondary to) community ratings.

### Ratings
- **Scale** — 1 to 5 glasses (never stars, never 100-point scale)
- **Community Rating** — Simple average of all user ratings. Displayed as "4.3 / 5" with visual glass representation.
- **PRO Rating** — Secondary, smaller rating displayed alongside the main rating with a "PRO" badge. Also 1-5 glasses.

---

## Core Entities

### Wine
A specific wine product including:
- Name
- Winery / producer
- Vintage
- Denomination / region (DOCa, DO, etc.)
- Grape varieties
- Type (tinto, blanco, rosado, espumoso)
- Tasting notes and flavor tags
- **Maridaje** — Food pairing suggestions from Vinora's curated base, augmented by PRO and user recommendations.
- **Drinking window** — Producer's recommended drinking window, augmented by PRO reviews for realism.
- **Bottle image** — Vinora maintains canonical product images for consistency. Falls back to merchant-provided images if canonical unavailable.

### Offer
A merchant's selling proposition for a specific wine. Includes:
- Price
- Stock status (when available)
- Shipping information
- Estimated delivery
- Freshness indicator ("last checked X time ago")

Offers are cached from merchant sources and explicitly display their age to build trust.

**Offer Ranking** — By default, sorted by a composite value score (price + rating + merchant reputation). Users can re-sort via filters: "Mejor precio," "Más valorado," "Más cercano," "Reputación." User's sort preference persists via settings.

**Price Display** — Wine cards show "desde €X.XX" (lowest available price across all verified merchants). This is honest, actionable, and creates deal-hunting behavior.

### Scan
A user action to identify a wine via:
- Barcode/UPC scanning
- OCR label recognition (reads text from wine label)
- Image-based fuzzy matching

When a wine is not found in the database:
- A **placeholder entry** is created with captured data
- Fuzzy matching attempts to suggest close matches
- The scan appears in user's history as "pending identification"
- User can help identify or submit details

### Favorites
Wines that a user has saved for later access. Users save the **Wine**, not a specific offer — since offers and prices change over time. Favorites display current available offers when accessed.

### Home Sections
Each home screen section uses a distinct ranking algorithm:
- **Tendencias** — Velocity of recent engagement (scans, views, ratings in the last 7-30 days)
- **Mejor valorados** — All-time highest community ratings
- **Mejor calidad-precio** — Rating-to-price ratio (value wines)
- **Recomendados por profesionales** — Wines highly rated by PROs
- **Populares** — Overall engagement volume (scans + views over time)

Each section meaningfully differs to create varied discovery paths.

### Catas y Experiencias (Phase 3)
Future expansion where Vinora connects wine lovers with physical wine experiences:
- Wine events and tastings
- PRO-hosted exclusive events with cellars
- Ticket sales through Vinora with commission
- Location-aware features for "near me" discovery

In MVP, home screen shows 1-2 curated placeholder cards linking to "Próximamente" state.

### Merchant
A verified third-party wine seller. Must complete KYB verification before appearing in Vinora.

**Merchant Profile Claim** — After KYB verification, merchants can claim their business profile to gain ownership of their storefront appearance, offered wines, and access to performance analytics.

### User
A consumer using the app. Can be in **Guest** state (browse, scan, search) or **Logged-in** state (favorites, reviews, scan history, profile).

**Authentication** — Primary: Social login (Google ID, Apple ID). Fallback: Email + password. No passwords for social login users. Mobile-first, low-friction onboarding.

### Review
A user's rating and optional text feedback about a wine. Includes 1-5 glasses rating, optional tasting notes, and optional flavor/aroma tags.

**Phase 1 (MVP)** — Any logged-in user can review any wine. No proof of purchase required.
**Phase 2 (Future)** — When in-app purchases exist, display "verified purchase" badge for reviews from confirmed buyers.

### Tasting Attributes (WSET-Based)
Vinora uses the **WSET Systematic Approach to Tasting (SAT)** as the standard framework for wine evaluation. This provides users with a structured vocabulary to describe wines consistently.

**Four-Phase Framework:**
1. **Appearance** — Clarity, intensity (pale/medium/deep), color
2. **Nose** — Condition (clean/unclean), intensity (light/medium/pronounced), aroma characteristics
3. **Palate** — Sweetness, acidity, tannin (reds), alcohol/body, flavor intensity, flavor characteristics, finish length
4. **Conclusions** — Quality assessment, readiness to drink

**Structural Dimensions (WSET Scales):**
- **Sweetness**: Dry → Off-dry → Medium-dry → Medium → Medium-sweet → Sweet → Luscious
- **Acidity**: Low → Medium(-) → Medium → Medium(+) → High
- **Tannin** (reds only): Low → Medium(-) → Medium → Medium(+) → High
- **Body** (alcohol): Light → Medium(-) → Medium → Medium(+) → Full
- **Finish Length**: Short → Medium → Long

**AI Extraction** — Users write reviews naturally; Vinora's AI extracts WSET-aligned attributes and maps them to the standardized scales. This bridges casual tasting notes with professional vocabulary.

### Vinora Assistant
An AI-powered chat feature ("Pregunta por este vino") that provides wine guidance by synthesizing:
- Vinora's curated wine information (pairings, serving suggestions, similar wines)
- Community reviews and comments (quoted with attribution)
- Winemaker and merchant provided descriptions and notes

The assistant acts as a sommelier-style advisor, not a generic chatbot.

### Search
Full-text search across key wine fields: name, bodega/winemaker, denomination (DO), region, and grape varieties. Results ranked by relevance. Filters (tipo, precio, valoración, etc.) refine results after search.
