# Tag Detail Pages & Enhanced Wine Navigation

## Problem Statement

Vinora users can view flavor tags on wine detail sheets, but cannot explore deeper into specific tasting notes. When a user sees "Frutas negras" as a tag, they want to:
- See what specific notes are included (casis, mora, arándano, etc.)
- Read all community comments that mention those specific notes
- Discover other wines that share these flavor characteristics
- Learn the educational context (where do these notes come from molecule-wise?)

Currently, tags are dead ends with no drill-down capability.

## Solution

Create a **Tag Detail Page** system that provides deep exploration of flavor characteristics:
- Click any tag on wine detail → Tag Detail Page
- View educational description and related subtags
- See all comments mentioning the tag (with word highlighting)
- Filter to specific subtags (e.g., "Casis" within "Frutas negras")
- Discover similar wines with those flavor notes
- Dedicated comments page for full comment threads

Additionally, enhance wine detail sheets with **grape varieties** section for improved discovery.

---

## User Stories

### Tag Discovery & Education
1. As a **wine learner**, I want to see an educational description when clicking a flavor tag, so that I can understand where these notes come from (molecules, range of characteristics)
2. As a **wine learner**, I want to see all subtags within a flavor category (e.g., Casis, Mora, Arándano under Frutas negras), so that I can learn specific examples
3. As a **wine learner**, I want subtags to show comment counts, so that I know which notes are most commonly mentioned
4. As a **wine learner**, I want to see the tag name displayed as a colored chip in the header, so that I understand the current context

### Comment Exploration
5. As a **user**, I want to see all comments from a wine that mention a specific tag, so that I can understand community opinion about that flavor characteristic
6. As a **user**, I want all occurrences of the tag word to be highlighted in comments, so that I can quickly see relevant mentions
7. As a **user**, I want to filter comments by subtag (e.g., only comments mentioning "Casis"), so that I can focus on specific flavor notes
8. As a **user**, I want the comment count to update when filtering by subtag, so that I know how many results match
9. As a **user**, I want to clear the subtag filter and return to all comments, so that I can explore broadly again
10. As a **user**, I want to see a "Ver todos los comentarios" button, so that I can access the full comment thread

### Wine Discovery
11. As a **user**, I want to see 5 wines that share the same flavor tag, so that I can discover similar wines
12. As a **user**, I want the wines list to sort by similar price range first, then rating, then comment count, so that I see the most relevant options
13. As a **user**, I want to click "Ver N vinos más con estas notas" to go to search results, so that I can explore the full set of matching wines
14. As a **user**, I want the wines list to filter when I select a subtag, so that I only see wines with that specific note
15. As a **user**, I want the wines section to hide if no wines match a subtag filter, so that I don't see empty results

### Navigation & Context
16. As a **user**, I want the back button to return to the wine detail sheet, so that I maintain navigation context
17. As a **user**, I want to see "Reseñas que mencionan [TAG]" in the header, so that I understand the current view
18. As a **user**, I want tag detail pages to be accessible only from wine detail sheets (not shareable URLs), so that navigation remains simple
19. As a **user**, I want clicking a wine card to go to the wine's detail sheet, so that I can explore that wine fully
20. As a **user**, I want clicking a subtag chip to filter the view, not navigate away, so that I can quickly explore

### Dedicated Comments Page
21. As a **user**, I want to access a dedicated page with all comments mentioning a tag, so that I can read full threads
22. As a **user**, I want the comments page to show "N Comentarios que mencionan [TAG]" in the header, so that I understand the scope
23. As a **user**, I want to sort comments by "Más recientes", "Más valorados", or "Más respondidos", so that I can find what's most relevant
24. As a **user**, I want "Más recientes" to be the default sort, so that I see the latest activity first
25. As a **user**, I want the sort preference to persist for that specific tag/wine combination, so that my choice is remembered
26. As a **user**, I want comments to load infinitely as I scroll, so that I can browse seamlessly
27. As a **user**, I want the back button to return to the tag detail page, so that I maintain context
28. As a **user**, I want to click on a user's name to view their profile, so that I can see their background and other reviews

### Grape Varieties on Wine Detail
29. As a **user**, I want to see grape varieties listed below the winery name, so that I can quickly understand the wine's composition
30. As a **user**, I want grape varieties to be horizontally scrollable, so that wines with many varieties don't clutter the view
31. As a **user**, I want red grape varieties to use the "frutas negras" color scheme, so that I can visually distinguish from white varieties
32. As a **user**, I want white grape varieties to use the "citrus fruits" color scheme, so that I can visually distinguish from red varieties
33. As a **user**, I want to click a grape variety to go to search results filtered by that grape, so that I can discover other wines with the same variety

### Empty States & Loading
34. As a **user**, I want to see skeleton screens while the tag page loads, so that I understand content is coming
35. As a **user**, I want to see "No hay comentarios aún. ¡Sé el primero en comentar este vino!" if no comments exist, so that I understand the state
36. As a **user**, I want the wines section to not appear if no wines have that tag, so that I don't see empty sections
37. As a **user**, I want to see a loading indicator only if infinite scroll is slow, so that I'm not distracted by unnecessary UI

### PRO Features
38. As a **PRO user**, I want my PRO badge to appear on my comments, so that others recognize my expertise
39. As a **user**, I want to see PRO badges on comments from verified wine professionals, so that I can weigh expert opinions appropriately

---

## Implementation Decisions

### Navigation Architecture

**Tag Detail Page Access:**
- Entry point: Click any tag chip on wine detail sheet
- Full-screen slide-in animation (like merchant offers)
- Not shareable (no unique URLs) - app-internal state only
- Back button returns to wine detail sheet

**Dedicated Comments Page:**
- Entry point: "Ver todos los comentarios" button on tag detail page
- Full-screen with standard top bar navigation
- Back button returns to tag detail page
- Not shareable - app-internal state only

**Grape Variety Navigation:**
- Click grape variety chip → search results page with grape filter pre-applied

### Tag Detail Page Layout

**Header:**
- Left: Back button (←)
- Right: Empty (no share button)
- Content: "Reseñas que mencionan [TAG CHIP]"
- Layout: Left-aligned, tag chip uses same color as subtags

**Content Structure:**
1. Tag name (large, centered, tag's color)
2. Educational description (full text, kept short, no truncation)
3. "Variedades relacionadas" label
4. Subtags horizontal scroll (with fade edges, comment counts)
5. Filter header (hidden by default, shows when subtag selected)
6. Comments section header ("N comentarios")
7. Comments list (5 initially, tag words highlighted)
8. "Ver todos los comentarios" button
9. Wines section header ("Vinos con estas notas")
10. Wine cards (5 max, same format as main wine list)
11. "Ver N vinos más con estas notas" button

**Subtags Display:**
- Horizontal scroll with fade edges (same logic as wine detail flavor tags)
- Each subtag shows: count badge + name (e.g., "12 Casis")
- Clicking a subtag:
  - Shows filter header: "N COMENTARIOS mencionan [SUBTAG]"
  - Updates comments header count
  - Filters comments to show only those mentioning subtag
  - Filters wines to show only those with subtag in comments
  - Adds active state to clicked chip
- Clear button (✕ Limpiar) resets all filters

**Comments Display:**
- Same card format as wine detail comments
- All occurrences of tag/subtag word highlighted with tag color
- PRO badge shown if user is verified professional
- Relative timestamps ("hace 2 horas", "hace 3 días")
- Avatar: user photo if available, otherwise initials with colored circle

**Wines Display:**
- Same card format as main wine list (from prototype.html)
- Sorting priority: similar price range → higher rating → more comments with tag
- Clicking wine card → standard navigation to wine detail sheet
- "Ver N vinos más..." button → search page with tag filter pre-applied
- N = remaining count (not total)
- When filtered by subtag: button says "Ver N vinos más con [SUBTAG]"

**Filter State:**
- Active subtab chip gets dark background (tag's color, white text)
- Comments section updates to show filtered count
- Wines list filters to show only matches
- If wines list is empty after filtering, hide entire section
- Sort preference persists for that tag/wine/subtag combination

### Dedicated Comments Page Layout

**Header:**
- Left: Back button (←)
- Center: "N Comentarios que mencionan [TAG]"
- Right: Empty

**Sort Tabs:**
- Displayed under "Comentarios" header
- Three options: "Más recientes" (default), "Más valorados", "Más respondidos"
- Tab styling: pill-shaped, active state uses tag color

**Content:**
- No wine context shown (pure comments focus)
- Infinite scroll (auto-load as user scrolls)
- Loading indicator only if slow
- End of list = no message, natural end
- Comments same format as tag detail page
- Full review threads (unlimited depth, Threads-style)
- Click user name/avatar → user profile page
- Click reply → opens full comment page with reply field

**Sort State Persistence:**
- Persists for specific tag/wine/subtag combination
- Resets when navigating out of comments → subtags → tag scope
- Default always "Más recientes" when entering fresh

### Wine Detail Sheet Enhancement

**Grape Varieties Section:**
- Position: Directly under winery/producer name, before ratings
- Label: "Variedades"
- Display: Horizontal scroll with fade edges
- Styling:
  - Red varieties → same color as "frutas negras" tag
  - White varieties → same color as "citrus fruits" tag
- Click → search results with grape variety filter pre-applied

### Tag System Architecture

**Tag Hierarchy:**
- Main tags (e.g., "Frutas negras") have color, description, subtags
- Subtags (e.g., "Casis") inherit parent tag's color
- No rosé varieties (rosé wines made from red grapes)

**Tag Highlighting Logic:**
- Case-insensitive matching
- Matches standalone words (not substrings)
- Matches plurals (e.g., "casis" matches "Casis", "frambuesa" matches "frambuesas")
- Highlights ALL occurrences in a comment
- Uses tag's background and text color for highlight

**Tag Color System:**
- Each main tag has a defined color
- All subtags inherit parent tag's color
- Grape variety colors derived from tag colors (red/white)

### Empty States

**No Comments:**
- Message: "No hay comentarios aún. ¡Sé el primero en comentar este vino!"
- No tag mention in message (generic invitation)

**No Wines for Tag:**
- Don't show wines section at all

**No Wines for Subtag Filter:**
- Hide wines section entirely
- No suggestion/alternative shown

### Loading States

**Tag Detail Page:**
- Skeleton screens for header, comments, and wines sections
- Shimmer animation (same as existing prototype)

**Comments Page:**
- Skeleton for initial comments load
- Infinite scroll shows loading indicator only if slow

**Wine Cards:**
- Existing skeleton pattern reused

### Horizontal Scroll Component

**Shared Pattern (Reusable):**
- Used for: Subtags on tag page, grape varieties on wine detail
- Fade edges on both sides (pseudo-elements)
- JavaScript manages `.scrolled-start` and `.scrolled-end` classes
- Right fade shows initially (indicates more content)
- Left fade appears when scrolled away from start
- Right fade disappears at scroll end
- Hidden scrollbars
- Touch-friendly (momentum scroll)

### Styling Decisions

**Typography:**
- Tag name: 32px, bold, centered, tag's color
- Description: 14px, secondary text color
- Subtags label: 12px, uppercase, letter-spacing, tertiary color
- Subtag chips: 13px, with count badge (11px)

**Colors:**
- Tag colors inherited from existing system
- Highlight uses tag's background + text color
- PRO badge: verified professionals only (credentials checked)

**Spacing:**
- Consistent with existing prototype
- 16px padding standard
- 12-20px gaps between sections

---

## Testing Decisions

### What Makes a Good Test

For this feature, testing validates:
1. **Navigation flows work correctly** - back buttons maintain proper context
2. **Filtering logic works** - subtag selection filters both comments and wines
3. **Highlighting is accurate** - all tag word occurrences are highlighted correctly
4. **Sort options work** - comments page tabs reorder correctly
5. **Infinite scroll works** - comments load seamlessly
6. **Empty states display** - appropriate messages when no content
7. **State persistence works** - sort preferences remember correctly
8. **Horizontal scroll works** - fade edges appear/disappear appropriately

### Validation Checklist

**Tag Detail Page:**
- [ ] Clicking tag on wine detail opens tag detail page
- [ ] Back button returns to wine detail sheet
- [ ] Tag name displays with correct color
- [ ] Educational description displays fully
- [ ] Subtags scroll horizontally with fade edges
- [ ] Subtag counts display correctly
- [ ] Clicking subtag shows filter header
- [ ] Clicking subtag updates comments count
- [ ] Clicking subtag filters comments
- [ ] Clicking subtag filters wines list
- [ ] Clear button resets all filters
- [ ] "Ver todos los comentarios" button works
- [ ] Wine cards display correctly
- [ ] Clicking wine card navigates to wine detail
- [ ] "Ver N vinos más" button navigates to search
- [ ] Empty state displays when no comments
- [ ] Wines section hides when no wines

**Comments Page:**
- [ ] "Ver todos los comentarios" opens comments page
- [ ] Header displays correct count and tag
- [ ] Sort tabs display and work correctly
- [ ] "Más recientes" is default
- [ ] Infinite scroll loads more comments
- [ ] Back button returns to tag detail page
- [ ] Clicking user name navigates to profile
- [ ] End of scroll has no message
- [ ] Sort preference persists for tag/wine/subtag

**Wine Detail Enhancement:**
- [ ] Grape varieties section displays below winery
- [ ] Varieties scroll horizontally with fade edges
- [ ] Red varieties use correct color
- [ ] White varieties use correct color
- [ ] Clicking variety navigates to search results

**Tag Highlighting:**
- [ ] Tag words highlight in comments with correct color
- [ ] All occurrences highlight (not just first)
- [ ] Matching is case-insensitive
- [ ] Plurals match correctly
- [ ] Highlighting doesn't break HTML structure

### No Automated Tests

This is a static HTML prototype. Validation is manual: open in browser, navigate all flows, verify behavior matches specification.

---

## Out of Scope

### Phase 2+ Features
- Shareable URLs for tag pages
- Tag following/notification system
- Tag editing by users
- Tag suggestion/creation by users
- Advanced tag analytics
- Tag-based recommendations ("wines you might like")
- Tag comparison across wines

### Technical Exclusions
- Real-time comment count updates
- Optimistic UI updates for comments
- Offline caching of tag pages
- Tag search/suggestions
- Tag editing or merging tools

### Design Decisions Not Covered
- Exact color values for each tag (use existing palette)
- Specific content for educational descriptions (curated separately)
- Maximum character count for descriptions (kept short by editorial)

---

## Further Notes

### Tag Content Curation

Educational descriptions for tags should be:
- 2-4 lines maximum
- Spanish language first, ready for multilingual
- Curated content (not user-generated)
- No missing content (all tags have descriptions)

Descriptions should cover:
- Molecular origin of the flavor notes
- Range of characteristics within the category
- Common wine examples where these notes appear

### Navigation Flow Summary

```
Wine Detail Sheet
    ↓ (click tag)
Tag Detail Page
    ├→ (click "Ver todos los comentarios")
    │   Dedicated Comments Page
    │       └→ (click user) User Profile
    ├→ (click wine card) Wine Detail Sheet
    └→ (click "Ver N vinos más") Search Page (filtered)

Dedicated Comments Page
    └→ (back) Tag Detail Page

Tag Detail Page
    └→ (back) Wine Detail Sheet
```

### Wine List Sorting Algorithm

Default sorting on tag detail page:
1. **Price proximity** - Wines with similar price to current wine first
2. **Rating** - Higher rated wines first within price band
3. **Comment count** - Wines with more tag mentions first

This ensures users see wines that are both similar and well-regarded by the community.

### Subtag Filtering Scope

When a subtag is selected:
- Comments: Show only comments mentioning that specific subtag
- Wines: Show only wines that have at least one comment mentioning the subtag
- Header: "N COMENTARIOS mencionan [SUBTAG]"
- Button: "Ver N vinos más con [SUBTAG]"
- Clear: Returns to main tag view (all comments, all wines)

### State Management

Scope of state persistence:
- Sort preference: Persists for tag + wine + subtag combination
- Subtag filter: Resets when leaving tag detail page
- Navigation: Back button always returns to previous screen

### Component Reuse

The horizontal scroll with fade edges pattern should be:
- Implemented as a reusable CSS class + JavaScript utility
- Used for: Subtags (tag page), Grape varieties (wine detail), Flavor tags (wine detail)
- Consistent behavior across all instances
