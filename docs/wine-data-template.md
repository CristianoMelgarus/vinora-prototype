# Vinora Wine Data - WSET Attribute Population Template

**Instructions:** Use this template to populate WSET-aligned tasting attributes for each wine. Return the completed table as markdown.

## Specification Prompt (for the other model)

```
You are a WSET-certified sommelier specializing in Spanish wines. For each wine in the table below:

1. Search for current information about the wine (vintage, producer, region)
2. Determine grape variety(s) if not specified
3. Assign WSET Systematic Approach to Tasting attributes using EXACTLY these scales:

**WSET SCALES (use these terms only):**
- Sweetness: Dry, Off-dry, Medium-dry, Medium, Medium-sweet, Sweet, Luscious
- Acidity: Low, Medium(-), Medium, Medium(+), High
- Body (Alcohol): Light, Medium(-), Medium, Medium(+), Full
- Tannin (reds only): Low, Medium(-), Medium, Medium(+), High
- Finish: Short, Medium, Long

4. Add:
- Tasting notes (aroma, flavor) - 2-3 descriptors
- Food pairing suggestion (maridaje)
- Drinking window (e.g., "2024-2028" or "Drink now" or "2026-2035")
- Community rating (1-5, realistic based on producer reputation)

**Return the completed table with all columns filled.**
```

## Wine Data Table

| # | Wine Name | Producer | Vintage | Region/DO | Grapes | Price (€) | Type | Sweetness | Acidity | Body | Tannin | Finish | Tasting Notes | Food Pairing | Drinking Window | Community Rating |
|---|-----------|----------|---------|-----------|--------|-----------|------|-----------|---------|-------|--------|--------|----------------|--------------|-----------------|------------------|
| 1 | Renaix la Passió | Oscar Mestre | N/V | Alicante DO | Giró | 7.90 | White | | | | | | | | | |
| 2 | Renaix de Giró | Oscar Mestre | N/V | Alicante DO | Giró | AGOTADO | White | | | | | | | | | |
| 3 | Insurrecte | Oscar Mestre | 2022 | Alicante DO | Moscatel | 13.90 | White | | | | | | | | | |
| 4 | Trepadell | Oscar Mestre | N/V | Alicante DO | Giró | 17.90 | White | | | | | | | | | |
| 5 | Giró | Oscar Mestre | N/V | Alicante DO | Giró | 14.90 | Red | | | | | | | | | |
| 6 | Origen | Oscar Mestre | N/V | Alicante DO | Giró | 20.50 | Red | | | | | | | | | |
| 7 | Dehesa El Carrascal | Dehesa El Carrascal (Mar García) | 2019 | Almansa DO | Garnacha Tintorera | 6.90 | Red | | | | | | | | | |
| 8 | Albahra | Envínate | 2023 | Almansa DO | Garnacha Tintorera | 8.90 | Red | | | | | | | | | |
| 9 | Boticario de Silos Tinto | Andrés Septién | N/V | Arlanza DO | Tempranillo, etc. | 10.90 | Red | | | | | | | | | |
| 10 | El Serbal | Adrián Alonso Vinos (El Serbal) | N/V | Arlanza DO | | 18.50 | Red | | | | | | | | | |
| 11 | El Serbal Paraje La Santa | Adrián Alonso Vinos (El Serbal) | N/V | Arlanza DO | | 25.50 | Red | | | | | | | | | |
| 12 | Otro Cuento | El Hato y El Garabato | N/V | Arribes del Duero DO | Juan García | 12.90 | Red | | | | | | | | | |
| 13 | Cotexa | El Hato y El Garabato | 2023 | Arribes del Duero DO | Juan García | 9.90 | Red | | | | | | | | | |
| 14 | Sin Blanca | El Hato y El Garabato | 2018 | Arribes del Duero DO | Rufete, etc. | 12.50 | Red | | | | | | | | | |
| 15 | Casar de Burbia Godello | Casar de Burbia | N/V | Bierzo DO | Godello | 8.50 | White | | | | | | | | | |
| 16 | La Salvación | César Márquez | 2023 | Bierzo DO | Godello | 17.50 | White | | | | | | | | | |
| 17 | Parajes | César Márquez | 2023 | Bierzo DO | Mencía blend | 10.90 | Red | | | | | | | | | |
| 18 | Valtuille Vino de Villa | César Márquez | N/V | Bierzo DO | Mencía | 14.50 | Red | | | | | | | | | |
| 19 | Pico Ferreira | César Márquez | N/V | Bierzo DO | Mencía | 26.50 | Red | | | | | | | | | |
| 20 | Sufreiral | César Márquez | N/V | Bierzo DO | Mencía | 26.50 | Red | | | | | | | | | |
| 21 | Rapolao | César Márquez | N/V | Bierzo DO | Mencía | 26.50 | Red | | | | | | | | | |
| 22 | Brezo Godello | Mengoba | 2025 | Bierzo DO | Godello | 7.90 | White | | | | | | | | | |
| 23 | Brezo Mencía | Mengoba | 2023 | Bierzo DO | Mencía | 6.90 | Red | | | | | | | | | |
| 24 | Mengoba Godello Viejo | Mengoba | 2023 | Bierzo DO | Godello | 13.90 | White | | | | | | | | | |
| 25 | Mengoba Mencia de Espanillo | Mengoba | N/V | Bierzo DO | Mencía | 19.90 | Red | | | | | | | | | |
| 26 | Mengoba Las Botas Godello | Mengoba | N/V | Bierzo DO | Godello | 29.90 | White | | | | | | | | | |
| 27 | Mengoba Las Tinajas Godello | Mengoba | N/V | Bierzo DO | Godello | 29.90 | White | | | | | | | | | |
| 28 | Mengoba Estaladiña | Mengoba | N/V | Bierzo DO | Mencía | 32.00 | Red | | | | | | | | | |
| 29 | La Gran Cuvee | Mengoba | N/V | Bierzo DO | Godello | 52.90 | White | | | | | | | | | |
| 30 | La Llorona | Verónica Ortega | 2023 | Bierzo DO | Godello | 19.90 | White | | | | | | | | | |
| 31 | Firmo Godello | Bodegas Firmo | N/V | Bullas DO | Godello | 13.90 | White | | | | | | | | | |
| 32 | Firmo Mencía | Bodegas Firmo | N/V | Bullas DO | Mencía | 10.90 | Red | | | | | | | | | |
| 33 | Banquete de Platón | Jorge Piernas | N/V | Bullas DO | Monastrell | 7.75 | Red | | | | | | | | | |
| 34 | Sin Esquema | Jorge Piernas | N/V | Bullas DO | Monastrell | 14.17 | Red | | | | | | | | | |
| 35 | Syrah By Sin Esquema | Jorge Piernas | N/V | Bullas DO | Syrah | 17.75 | Red | | | | | | | | | |
| 36 | Caliza en Los Bolsillos | Jorge Piernas | N/V | Bullas DO | Monastrell | 17.75 | Red | | | | | | | | | |
| 37 | Jorge Piernas | Jorge Piernas | 2021 | Bullas DO | Monastrell | 23.37 | Red | | | | | | | | | |
| 38 | Antonio Piernas | Jorge Piernas | N/V | Bullas DO | Monastrell | 23.37 | Red | | | | | | | | | |
| 39 | Juan Piernas | Jorge Piernas | N/V | Bullas DO | Monastrell | 26.95 | Red | | | | | | | | | |
| 40 | Soldados de Cuera | Jorge Piernas | N/V | Bullas DO | Monastrell | 23.37 | Red | | | | | | | | | |
| 41 | La Moranegra Rosado | Pura Viña | N/V | Bullas DO | Monastrell | 14.00 | Rosé | | | | | | | | | |
| 42 | Pura Viña Blanco Macabeo | Pura Viña | N/V | Bullas DO | Macabeo | 9.50 | White | | | | | | | | | |
| 43 | Pura Viña Monastrell | Pura Viña | N/V | Bullas DO | Monastrell | 8.90 | Red | | | | | | | | | |
| 44 | Tía Manuela | Tía Manuela | N/V | Bullas DO | Monastrell | 12.00 | Red | | | | | | | | | |
| 45 | La Tormenta | Vinateros | N/V | Cádiz | | 24.90 | Red | | | | | | | | | |
| 46 | Quite | Vinateros | N/V | Cádiz | | 10.50 | White | | | | | | | | | |
| 47 | Roc | Vinateros | N/V | Cádiz | | 26.50 | Red | | | | | | | | | |
| 48 | Cobrana | Vinateros | N/V | Cádiz | | 26.50 | Red | | | | | | | | | |
| 49 | Kinki | Vinateros | N/V | Cádiz | | 19.90 | White | | | | | | | | | |
| 50 | Câreo | Vinateros | N/V | Cádiz | | 28.90 | Red | | | | | | | | | |
| 51 | Gloc Ancestral Palomino | Vinateros | N/V | Cádiz | Palomino | 16.90 | Sparkling | | | | | | | | | |
| 52 | Gloc Ancestral Mencia y Jerez | Vinateros | N/V | Cádiz | Mencía | 17.90 | Red | | | | | | | | | |
| 53 | Le Fleq Palomino | Flequi Berruti | N/V | Cádiz (Sanlúcar) | Palomino | 12.90 | White | | | | | | | | | |
| 54 | Le Fleq Pinot Noir | Flequi Berruti | N/V | Cádiz | Pinot Noir | 12.90 | Red | | | | | | | | | |
| 55 | Porfia Blanco | Agrícola Calcárea | 2023 | Cádiz (Sanlúcar) | Blend | 11.50 | White | | | | | | | | | |
| 56 | Sin Bulla | Agrícola Calcárea | N/V | Cádiz | | 13.90 | White | | | | | | | | | |
| 57 | Arriconao | Agrícola Calcárea | N/V | Cádiz | | 12.90 | Red | | | | | | | | | |
| 58 | Porfia Tinto | Agrícola Calcárea | N/V | Cádiz | | 13.90 | Red | | | | | | | | | |
| 59 | Manga del Brujo Blanco | El Escocés Volante | N/V | Calatayud DO | | 8.90 | White | | | | | | | | | |
| 60 | Manda Huevos Parcela Carramainas | El Escocés Volante | N/V | Calatayud DO | Garnacha | 13.90 | Red | | | | | | | | | |
| 61 | Manga del Brujo | El Escocés Volante | N/V | Calatayud DO | Garnacha | 8.90 | Red | | | | | | | | | |
| 62 | Manda Huevos Parcela Caña Andrea | El Escocés Volante | N/V | Calatayud DO | Garnacha | 13.90 | Red | | | | | | | | | | |
| 63 | Dos Dedos de Frente | El Escocés Volante | N/V | Calatayud DO | Garnacha | 16.90 | Red | | | | | | | | | | |
| 64 | Tío Santiago | Envínate | N/V | Ycoden-Daute-Isora (Tenerife) | Listán Blanco | 16.00 | White | | | | | | | | | |
| 65 | Paraje Oeste | | N/V | Canaries | | 14.00 | White | | | | | | | | | |
| 66 | Paraje Norte | | N/V | Canaries | | 19.50 | Red | | | | | | | | | |

## Notes for Filling:

- **Sweetness/Body/Tannin scales:** Use exact WSET terms: Low, Medium(-), Medium, Medium(+), High
- **Tasting notes:** 2-3 descriptors (e.g., "citrus, mineral, stone fruit" or "black cherry, violet, black pepper")
- **Food pairing:** Specific Spanish-style suggestions (e.g., "paella, grilled fish", "jamón ibérico, manchego", "carne asada, quesos curados")
- **Drinking window:** Realistic based on wine style (young whites: 2-4 years; premium reds: 5-10+ years)
- **Community rating:** 1-5 scale, be realistic based on producer quality (well-known producers = higher ratings)
