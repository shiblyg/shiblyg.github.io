# Changing the accent colour

Everything is driven by CSS variables in the `:root` block at the top of
`index.html`. Swap two lines for light mode and two for dark. Nothing else.

## Current: teal

```css
--wash:#F3F7F8; --tint:#E7F2F3;
--accent:#0B6E77; --accent-2:#0A5A62; --accent-soft:#D8ECEE;
/* dark mode */
--tint:#102630;
--accent:#4FBCC5; --accent-2:#7AD5DC; --accent-soft:#123640;
```

## Navy

```css
--wash:#F4F7FB; --tint:#E9EFF7;
--accent:#1B3A6B; --accent-2:#142C52; --accent-soft:#DEE7F3;
/* dark mode */
--tint:#132335;
--accent:#7FA9E0; --accent-2:#A8C6EC; --accent-soft:#16283F;
```

## Maroon

```css
--wash:#FBF5F6; --tint:#F7E9EC;
--accent:#7A2233; --accent-2:#5E1926; --accent-soft:#F2DEE2;
/* dark mode */
--tint:#2C1119;
--accent:#E08A9B; --accent-2:#EFB3BF; --accent-soft:#3A1620;
```

## Forest

```css
--wash:#F4F9F6; --tint:#E8F2EB;
--accent:#1F5137; --accent-2:#163C29; --accent-soft:#DCEBE2;
/* dark mode */
--tint:#12271C;
--accent:#78C29A; --accent-2:#A3D8BB; --accent-soft:#173425;
```

## Ochre

```css
--wash:#FCF7EE; --tint:#FAF0DE;
--accent:#8A5A16; --accent-2:#6B450F; --accent-soft:#F5E7CE;
/* dark mode */
--tint:#2C1F0D;
--accent:#E0B063; --accent-2:#EFCB92; --accent-soft:#3B2A11;
```

## If you pick your own

- Keep `--accent-2` darker than `--accent`. Links use `--accent-2` on white and
  need a contrast ratio of at least 4.5:1 to pass WCAG AA.
- `--accent-soft` is a very light tint used behind tag pills. Keep it above 92%
  lightness or the pill text stops being readable.
- The dark-mode accent must be *lighter* than the light-mode one, not the same
  colour. A dark accent on a dark background fails contrast.
- Check against the portrait. It has a strong navy-blue backdrop, so anything in
  the blue-cyan family competes with it.
