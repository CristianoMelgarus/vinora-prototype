# Vinora MVP Prototype - Product Requirements Document

## Problem Statement

Spanish wine consumers face fragmentation when discovering and purchasing wine:
- Wine information is scattered across multiple apps, websites, and retailer catalogs
- Price comparison requires visiting multiple merchant sites individually
- Trust in merchant quality and offer legitimacy is unclear
- Quality ratings are dominated by elite critics, not community voice
- No single mobile-first destination for discovery, information, and verified marketplace

Current competitors (Vivino, etc.) feel cluttered, inconsistent, and lack editorial curation for the Spanish market.

## Solution

Vinora is a premium, mobile-first wine discovery and marketplace app for Spain that:
- **Discovers** wines through scanning, search, and curated exploration
- **Informs** through community ratings, PRO reviews, and AI-powered guidance
- **Connects** users to verified third-party merchants with price comparison
- **Tracks** user history, favorites, and reviews

**This PRD defines a high-fidelity HTML prototype** — a clickable, polished, mobile-first specification that demonstrates the full product experience without backend implementation.

---

## User Stories

### Discovery & Browsing
1. As a **wine enthusiast**, I want to browse curated wine collections on the home screen, so that I can discover new wines beyond what I already know
2. As a **casual wine drinker**, I want to see trending wines, so that I can discover what's popular right now
3. As a **value-conscious shopper**, I want to browse "best quality-price" wines, so that I can find good wines at fair prices
4. As a **quality-seeking user**, I want to see PRO-recommended wines, so that I can benefit from expert curation
5. As a **user**, I want to search for wines by name, winery, region, grape, or denomination, so that I can find specific wines or explore by characteristics
6. As a **user**, I want to filter search results by type, price range, rating, denomination, and more, so that I can narrow down to relevant options
7. As a **user**, I want to see the lowest price ("desde €X.XX") on wine cards, so that I can quickly assess value

### Scanning
8. As a **user in a wine shop or restaurant**, I want to scan a wine label/barcode, so that I can instantly get information and price comparisons
9. As a **user**, I want the scanner to use OCR and fuzzy matching, so that I can identify wines even without a perfect barcode scan
10. As a **user**, I want to see placeholder entries for unrecognized wines, so that my scan effort is preserved and I can help identify the wine
11. As a **user**, I want to access my scan history, so that I can revisit wines I've previously scanned

### Wine Information
12. As a **user**, I want to see comprehensive wine details (grapes, denomination, tasting notes, drinking window), so that I can understand what I'm buying
13. As a **user**, I want to see community ratings (1-5 glasses) alongside PRO ratings, so that I get both populist and expert perspectives
14. As a **user**, I want to see AI-extracted tasting attributes (boldness, acidity, sweetness, etc.), so that I can understand the wine's taste profile before buying
15. As a **user**, I want to see food pairing suggestions (maridaje), so that I can choose wines for my meals
16. As a **user**, I want to see drinking window recommendations, so that I know if a wine is ready to drink or should be cellared

### Merchant Offers
17. As a **shopper**, I want to see all verified merchant offers for a wine, so that I can compare prices and conditions
18. As a **user**, I want to see offer freshness ("last checked 2h ago"), so that I can trust the price data is current
19. As a **user**, I want to sort offers by value, price, rating, or distance, so that I can optimize for what matters to me
20. As a **user**, I want to see merchant verification badges, so that I know I'm buying from legitimate sources
21. As a **user**, I want to see shipping and delivery information, so that I know when and how I'll receive my wine
22. As a **user**, I want to click through to purchase on the merchant's site, so that I can complete my transaction

### Engagement & Personalization
23. As a **guest user**, I want to browse and explore without creating an account, so that I can discover Vinora's value before committing
24. As a **guest user**, I want to be prompted to sign in when trying to save favorites, so that I understand the benefit of creating an account
25. As a **logged-in user**, I want to save wines to favorites, so that I can build a personal collection for future reference
26. As a **logged-in user**, I want to see empty and filled states for favorites, so that I understand the feature and can track my saved wines
27. As a **logged-in user**, I want to write reviews with ratings and comments, so that I can share my experiences with the community
28. As a **logged-in user**, I want to access my profile with stats (favorites count, scan count, review count), so that I can track my engagement
29. As a **logged-in user**, I want to see PRO badges on my profile if I qualify, so that my reviews carry appropriate distinction
30. As a **logged-in user**, I want to ask questions about wines through the Vinora Assistant, so that I can get personalized guidance

### Help & Guidance
31. As a **user**, I want to ask the Vinora Assistant questions about wines, so that I can get sommelier-style guidance
32. As a **user**, I want the assistant to quote community reviews and merchant info, so that I get both curated and crowd-sourced perspectives
33. As a **merchant**, I want to claim my business profile, so that I can control how my storefront appears on Vinora
34. As a **merchant**, I want to see a verification request flow, so that I understand how to become verified

### Navigation & UX
35. As a **user**, I want consistent top and bottom navigation across all screens, so that I always know where I am and how to navigate
36. As a **user**, I want the scanner to be the central, most prominent action in the bottom nav, so that I can quickly scan any wine I encounter
37. As a **user**, I want smooth transitions between screens, so that the app feels cohesive and responsive
38. As a **user**, I want the app to feel premium and elegant, so that I trust the quality of the recommendations

### Future Features (Teaser Only)
39. As a **user**, I want to see a "Catas y Experiencias" teaser section, so that I understand Vinora's vision beyond marketplace
40. As a **user**, I want to see a "coming soon" state for events, so that I know this feature is planned

---

## Implementation Decisions

### Platform & Format
- **Static HTML/CSS/JS prototype** — No backend, no real authentication, no real payments
- **Single-page or multi-section HTML** — All navigation handled via JavaScript view switching
- **Mobile-first responsive design** — Optimized for phone screens, responsive up to tablet
- **Spanish UI copy throughout** — All user-facing text in Spanish

### Design System
**Global App Shell:**
- Top bar on ALL screens (left: back/brand, center: title, right: search/profile)
- Bottom nav on ALL screens (Inicio, Escanear, Favoritos — scanner is central/prominent)
- Consistent spacing, elevation, border radius, icon family across all screens

**Typography:**
- Serif display font: Cormorant Garamond
- Sans-serif UI font: DM Sans
- Single typography system — no font changes between views

**Color Palette:**
- Background: Light beige/warm off-white (#F5F1EB)
- Primary accent: Burgundy (#722F37)
- Text: Dark navy/charcoal (#1A1A2E)
- Secondary accents: Warm clay/earthy tones

**Component System:**
- Buttons (primary, secondary, icon-only)
- Search bars
- Filter chips
- Rating displays (1-5 glasses, PRO badge)
- Wine cards
- Merchant cards
- Review cards
- Empty states
- Login gates
- Badges (verified, PRO, new)
- Forms
- List rows
- Profile blocks
- History items

### Rating System
- **Scale:** 1-5 glasses (never stars, never 100-point)
- **Community Rating:** Simple average of all user ratings — displayed as "4.3 / 5" with glasses
- **PRO Rating:** Secondary, smaller rating with "PRO" badge — always visually secondary to community rating
- **Visual:** Glass icons that fill proportionally (full, half, empty)

### User States
**Guest User:**
- Can browse, search, scan, view wine details, view merchant offers
- Cannot save favorites, access scan history, write reviews, manage profile
- Attempted protected actions show elegant login gate

**Logged-in User:**
- Full access to favorites, reviews, scan history, profile
- Social login (Google ID, Apple ID) primary — email/password fallback
- Profile shows avatar, name, bio, stats (favorites count, scan count, review count)
- PRO badge displays if applicable

### Screen List (21 connected screens)
1. Splash / launch screen
2. Optional onboarding / welcome
3. Home / Inicio
4. Search
5. Search filters
6. Search results
7. Scanner
8. Scan result / wine match
9. Wine detail
10. Verified merchant offers screen
11. Favorites empty state
12. Favorites filled state
13. Login / sign-up gate
14. Guest profile
15. Logged-in profile
16. Scan history
17. Write review
18. Review submitted success state
19. Chat / "Pregunta por este vino"
20. Merchant claim / "Reclamar ficha"
21. Expanded reviews or reviewer list

### Data Model (Simulated)
**Wine:**
- Name, winery/producer, vintage, denomination/region
- Grape varieties, type (tinto/blanco/rosado/espumoso)
- Tasting notes, flavor tags, maridaje, drinking window
- Bottle image (canonical Vinora or merchant fallback)
- Community rating, PRO rating, rating count
- Price display: "desde €X.XX"

**Offer:**
- Merchant name, verified badge
- Price, stock status (when available)
- Shipping info, estimated delivery
- Freshness indicator ("last checked X time ago")
- Value score for default sorting

**Review:**
- User rating (1-5 glasses), optional text
- User name, avatar, date
- Optional PRO badge with profession/company
- Flavor/aroma tags (AI-extracted in real app, simulated in prototype)

**Tasting Attributes:**
- Reds: Boldness, Acidity, Sweetness, Bitterness, Alcohol, Length, Tannins
- Whites/Rosés: Boldness, Acidity, Sweetness, Bitterness, Alcohol, Length
- Sparkling: Boldness, Acidity, Sweetness, Bitterness, Alcohol, Length, Bubbles

### Clickable Flows (Must Work)
1. Inicio → Escanear → Resultado → Ficha de vino → Ver ofertas → Merchant offer
2. Inicio → Buscar → Resultados → Ficha de vino
3. Ficha de vino → Favorito → Login gate
4. Perfil → Historial de escaneos → Reabrir vino
5. Ficha de vino → Pregunta por este vino → Chat
6. Merchant listing → Reclamar ficha

### Technical Constraints
- No backend required
- No real authentication (simulate guest/logged-in states via JS)
- No real payments (all CTAs are mock)
- No localStorage required (all state in-memory)
- Use CDN fonts, CDN icons, inline SVG
- Clean semantic HTML, modern responsive CSS
- Simple JS for view switching and interactions

---

## Testing Decisions

### What Makes a Good Test
For an HTML prototype, "testing" means **validation of the design specification**:
- All screens are reachable via navigation
- All clickable flows complete without errors
- Design system is consistent (no one-off components)
- Guest/logged-in state transitions work correctly
- Empty states and success states display properly
- Mobile responsive at common breakpoints (375px, 414px, 768px)

### Validation Checklist
- [ ] Top bar exists and is consistent on all 21 screens
- [ ] Bottom nav exists and is consistent on all 21 screens
- [ ] All 6 clickable flows complete end-to-end
- [ ] Rating system is uniform (1-5 glasses, PRO secondary)
- [ ] Price display is consistent ("desde €X.XX")
- [ ] Login gate appears for guest-protected actions
- [ ] Empty states exist for favorites, scan history
- [ ] Success states exist for review submission
- [ ] Typography is consistent (no font switching)
- [ ] Color palette is consistent (no jarring screens)
- [ ] All cards follow the same component logic
- [ ] Mobile responsive at 375px minimum width

### No Automated Tests
This is a static prototype. Automated tests are not applicable. Validation is manual: open in browser, navigate all flows, verify visual consistency.

---

## Out of Scope

### Phase 2+ Features (Not in MVP Prototype)
- Real authentication backend (social login simulated only)
- Real payment processing
- Real barcode/OCR scanning (simulated UI only)
- Real AI assistant (simulated chat UI only)
- Real merchant KYB verification flow (simulated only)
- Integrated checkout (Phase 2 — all purchases are external redirects)
- Events, ticketing, experiences (Phase 3 — teaser only)
- Location-aware features ("Cerca de ti" — Phase 3)
- Verified purchase badges on reviews (Phase 2)
- Admin dashboards or merchant backends

### Technical Exclusions
- Backend API, database, or server-side logic
- Real-time data synchronization
- Push notifications
- Offline mode
- Analytics tracking
- A/B testing infrastructure
- Performance optimization beyond basic responsive design

---

## Further Notes

### Brand Positioning
Vinora is **premium but not exclusive** — aspirational but accessible. More curated than Vivino, less intimidating than traditional wine criticism. The tone is warm, elegant, trustworthy, and contemporary.

### Marketplace Realism
The prototype must reflect that Vinora does **not own inventory**:
- CTAs say "Comprar en [merchant]" or "Ver oferta" — not "Add to cart"
- Merchant offers are from verified third parties
- Price data is cached and shows freshness
- Future integrated payments are hinted at but not implemented

### Merchant Trust
Verified merchants are central to the value proposition:
- Verification badge is prominent
- "Reclamar ficha" flow shows merchants can own their presence
- Stock and delivery info creates realistic expectations
- Reputation cues exist (even if simulated)

### Spanish Market Focus
All content, terminology, and design choices reflect Spanish wine culture:
- Denominations (DOCa, DO, VdlT)
- Spanish grape varieties (Tempranillo, Garnacha, Albariño, etc.)
- Spanish wine regions (Rioja, Ribera, Priorat, etc.)
- Maridaje culture (food is central to wine enjoyment)
- Mobile-first (Spain has high mobile penetration)

### Extensibility
The prototype should暗示 (hint at) future expansion without overbuilding:
- Catas section on home (Phase 3) — teaser only
- PRO infrastructure (ready for PRO applications in Phase 2)
- Merchant claim flow (ready for merchant onboarding in Phase 2)
- Offer freshness indicators (ready for real-time sync in Phase 2)

### Success Criteria
The prototype is successful when:
1. A user can click through all 6 flows without confusion
2. The app feels like a cohesive product, not disconnected screens
3. The design system is internally consistent
4. A developer could use this prototype as implementation specification
5. Merchant partners understand Vinora's value proposition from the offers screen
6. Investors/users understand the full product vision
