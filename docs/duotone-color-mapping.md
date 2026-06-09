# Vinora Flavor Tags - Duotone Color Mapping

**Status**: ✅ Complete - See `tags-duotone-colors.html` for live preview

---

## Complete Color Mapping Table

| Grupo | Emoji | Primary Color (Darks) | Secondary Color (Lights) | Ejemplos de descriptor |
|-------|-------|----------------------|---------------------------|------------------------|
| Floral | 🌸 | #D4A5A0 | #E8B3A8 | Rosa, violeta, árbol en flor |
| Fruta verde | 🍏 | #4A7C59 | #D4DDE0 | Manzana, pera, grosella espinosa |
| Fruta cítrica | 🍋 | #F5C942 | #E8B86D | Limón, lima, pomelo, naranja |
| Fruta de hueso | 🍑 | #D4965A | #E8B86D | Melocotón, albaricoque, nectarina |
| Fruta tropical | 🥭 | #C9A961 | #F5C942 | Mango, piña, melón, fruta de la pasión |
| Fruta roja | 🍓 | #C44238 | #E8B3A8 | Fresa, frambuesa, cereza roja |
| Fruta negra | 🫐 | #5A1F24 | #D4A5A0 | Arándano, zarzamora, ciruela negra |
| Herbáceo | 🌿 | #3D5A40 | #7B9B7A | Pimiento verde, hierba, hoja de tomate |
| Herbario | 🌱 | #4A7C59 | #D4DDE0 | Menta, eucalipto, hinojo |
| Especias picantes | 🌶️ | #C44238 | #E8B86D | Pimienta negra, pimienta blanca, regaliz |
| Levaduras | 🍞 | #E8B86D | #D4DDE0 | Pan, brioche, masa de pan |
| FML | 🧈 | #C9A961 | #D4DDE0 | Mantequilla, nata |
| Roble | 🪵 | #8B7355 | #A0826D | Vainilla, clavo, cedro, humo, café |
| Oxidación deliberada | 🥜 | #6B5D4F | #E8B86D | Almendra, avellana, nuez, toffee |
| Envejecimiento en botella | 🍂 | #8B7355 | #B8B3A8 | Cuero, champiñón, tabaco, miel |
| Defecto | ⚠️ | #B8B3A8 | #D4DDE0 | Corcho, cartón mojado, brett |

---

## Additional Tags (Mapped to Nearest Group)

| Emoji | Label | Mapped To Group |
|-------|-------|-----------------|
| 🍇 | Ciruela | Fruta negra (#5A1F24) |
| 🍇 | Fruta seca | Fruta negra (#5A1F24) |
| 🍊 | Cáscara | Fruta cítrica (#F5C942) |
| 🍷 | Vainilla | Roble (#8B7355) |
| 🍞 | Tostado | Roble (#8B7355) |
| 🔥 | Ahumado | Roble (#8B7355) |
| 🌲 | Balsámico | Herbáceo (#3D5A40) |
| 🍯 | Miel | Envejecimiento botella (#8B7355) |
| 🟤 | Trufa | Envejecimiento botella (#8B7355) |
| 🄾 | Cuero | Envejecimiento botella (#8B7355) |
| ☕ | Café | Roble (#8B7355) |
| 🍫 | Chocolate | Fruta negra (#5A1F24) |
| 🏔️ | Mineral | Defecto gray (#B8B3A8) |
| 🧂 | Salino / Yodo | Defecto gray (#B8B3A8) |
| 🦠 | Flor (velo) | Envejecimiento botella (#8B7355) |
| 🍶 | Oxidativo | Oxidación deliberada (#6B5D4F) |

---

## Implementation Notes

### SVG Filter Structure
Each duotone filter uses `feColorMatrix` to map emoji colors to two-color scheme:

```xml
<filter id="duotone-{group}">
    <feColorMatrix type="matrix"
        values="R_lum 0      0      0  R_dark
                0      G_lum 0      0  G_dark
                0      0      B_lum 0  B_dark
                0      0      0      1  0"/>
</filter>
```

Where `*_lum` values calculate pixel luminance and `*_dark` values set the primary (dark) color offset.

### Tag CSS Structure
```css
.tag-duo .tag-icon-side.bg-{group} {
    background: {primary_color};
}
.tag-duo .tag-text-side.tint-{group} {
    background: {secondary_color};
}
.tag-duo .tag-emoji.duo-{group} {
    filter: url(#duotone-{group});
}
```

---

## Live Preview
Open `/tags-duotone-colors.html` in browser to see all filters applied to actual emojis.
