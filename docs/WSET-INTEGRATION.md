# WSET Tasting Methodology Integration

This document explains how Vinora integrates the **WSET Systematic Approach to Tasting (SAT)** as the standard framework for wine evaluation across the platform.

## Overview

Vinora adopts WSET's globally-recognized tasting methodology to provide users with a structured, professional framework for evaluating and describing wines. This creates consistency across reviews, enables meaningful comparison, and elevates user expertise over time.

## WSET Systematic Approach to Tasting (SAT)

The SAT evaluates wines through **four sequential phases**:

### 1. Appearance (Visual)
- **Clarity**: Clear, hazy, cloudy
- **Intensity**: Pale, Medium, Deep
- **Color**: Specific color descriptors
- **Other observations**: Gas/viscosity/staining

### 2. Nose (Aroma)
- **Condition**: Clean or Unclean (faults)
- **Intensity**: Light, Medium(-), Medium, Medium(+), Pronounced
- **Aroma characteristics**:
  - Fruit categories (black fruit, red fruit, white fruit, citrus, tropical, tree fruit, dried fruit, cooked fruit)
  - Non-fruit (floral, herbal, spice, vegetative, earthy, mineral, animal, chemical)
  - Oak influences (vanilla, sweet spice, toast, smoke, char)
  - Bottling/aging

### 3. Palate (Taste & Mouthfeel)
- **Sweetness**: Dry, Off-dry, Medium-dry, Medium, Medium-sweet, Sweet, Luscious
- **Acidity**: Low, Medium(-), Medium, Medium(+), High
- **Tannin** (reds only): Low, Medium(-), Medium, Medium(+), High
- **Alcohol** (Body): Light, Medium(-), Medium, Medium(+), Full
- **Flavor intensity**: Light, Medium(-), Medium, Medium(+), Pronounced
- **Flavor characteristics**: Similar categories to Nose
- **Finish length**: Short, Medium, Long

### 4. Conclusions
- **Quality level**: Faulty, Poor, Acceptable, Good, Very Good, Outstanding
- **Readiness for drinking**: Yes/No, or time frame
- **Estimated price band** (optional): Standard, Premium, Luxury

## Integration in Vinora

### User Interface

1. **Wine Detail Pages** — Display structural attributes using WSET scales:
   - Visual scale bars with position markers
   - WSET terminology labels (Dry, Medium, Med(+), etc.)
   - Attribution: "Basado en WSET Systematic Approach to Tasting"

2. **Review Writing** — Structured prompts following SAT phases:
   - Quality rating (1-5 glasses) — Conclusions phase
   - Structure selector chips — Palate phase (Sweetness, Acidity, Tannin, Body, Finish)
   - Aroma characteristic tags — Nose phase
   - Flavor characteristic tags — Palate phase
   - Free text notes for additional observations

3. **Educational Modal** — In-app explanation of WSET terminology:
   - "What does Medium(+) mean?"
   - Scale definitions with examples
   - Accessible via info icons throughout the app

### AI Extraction

User reviews are analyzed using AI that:
1. Extracts WSET-aligned structural descriptors from natural language
2. Maps qualitative terms to WSET scales (e.g., "muy ácido" → High acidity)
3. Identifies aroma/flavor characteristics and categorizes them per WSET taxonomy
4. Aggregates community reviews into consensus profiles

### Spanish Market Adaptation

WSET terms coexist with traditional Spanish terminology:

| WSET Term | Spanish Equivalent |
|-----------|-------------------|
| Body | Cuerpo |
| Finish | Final / Postgusto |
| Acidity | Acidez |
| Tannins | Taninos |
| Sweetness | Dulzor |
| Pronounced intensity | Muy intenso |
| Long finish | Final largo |

Traditional Spanish classifications (Crianza, Reserva, Gran Reserva) remain as wine metadata alongside WSET structural analysis.

## Benefits

1. **Professional Credibility** — Aligns Vinora with global wine education standards
2. **Comparability** — Standardized vocabulary enables meaningful comparison across reviews
3. **User Education** — Users learn to taste like professionals through structured practice
4. **Data Quality** — Extracted attributes create rich, queryable wine profiles
5. **Scalability** — Framework accommodates beginners (Level 2) to experts (Level 4+)

## Implementation Notes

- **MVP**: Use WSET Level 2/3 scales — accessible to mainstream users
- **Phase 2**: Add WSET Level 4 elements for PRO users
- **AI**: Natural language extraction maps to WSET categories
- **UI**: Visual representations make abstract concepts concrete
- **Education**: Progressive disclosure — explain terms when needed

## Sources

- [WSET Official SAT Guide](https://www.wsetglobal.com/knowledge-centre/wset-systematic-approach-to-tasting-sat)
- [WSET Level 3 SAT PDF](https://www.wsetglobal.com/media/3119/wset_l3_wines_sat_en_jun-2016.pdf)
- [WSET Level 2 SAT PDF](https://www.wsetglobal.com/media/6916/wset_l2wines_sat_en_may2019.pdf)
- [WSET Level 4 SAT PDF](https://www.wsetglobal.com/media/11767/wset_l4wines_sat_en_aug2022.pdf)

## ADR

See `docs/adr/0003-wset-tasting-standard.md` for the architectural decision record documenting this choice.
