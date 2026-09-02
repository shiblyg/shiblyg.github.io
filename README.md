# shiblyg.github.io

Personal academic site for Md Shibly Sadique. Plain HTML and CSS, no build step,
no framework. GitHub Pages serves it straight from the repository root.

## Files

| File | What it is |
| --- | --- |
| `index.html` | The whole homepage: hero, research, publications, news, teaching, CV summary, contact. All CSS and JS are inline — one file, nothing to build. |
| `cv.tex` / `cv.pdf` | Full academic CV, six pages. Publications, teaching, service, coursework. LaTeX is the source; the PDF is generated. |
| `resume.tex` / `resume.pdf` | One-page industry résumé. Same facts, selected and compressed. |
| `cv.html` | Printable web CV. Needs `support.js` and `doc-page.js`. |
| `Makefile` | `make` builds both PDFs; `make cv` or `make resume` builds one; `make clean` removes aux files. |
| `images/` | Optimized JPEGs, 648 KB total (down from 18 MB). |
| `papers/` | Author PDFs linked from the publication list. |

## Two documents, one set of facts

`cv.tex` is the long record — a search committee reads this. `resume.tex` is the
one-page version — a recruiter reads this. They are separate files rather than one
file with a switch, because the résumé is not an abridgement: it drops the publication
list to four lines, adds a summary paragraph and a projects section, and rewrites the
research bullets around outcomes rather than methods.

When something changes, update both. The résumé is deliberately full to the page —
adding a line means cutting one.

## Rebuilding the PDFs

```
make            # both
make cv         # academic CV only
make resume     # résumé only
```

Each target runs pdflatex twice, which `hyperref` and the page counter both need.
Requires MiKTeX or TeX Live on Windows. Commit the regenerated PDFs alongside any
`.tex` change — GitHub Pages serves them as static files and will not build them
for you.

Both documents need `lastpage`, `titlesec`, `fancyhdr`, `enumitem`, `microtype`,
and `lmodern`. MiKTeX installs missing packages on first run; TeX Live users may
need `texlive-latex-extra`.

## Publishing

```powershell
cd "E:\Preparation\Prepared Documents\Webpage Material\publish"

# copy these files in over the old ones, then:
git add -A
git status --short          # check the list before committing
git commit -m "Redesign site; add LaTeX CV and resume"
git push -u origin website-redesign
```

Open a pull request from `website-redesign` into `main`, review the diff on GitHub,
then merge. Pages redeploys within a minute or two of the merge.

## Old files you can delete

These are superseded and only add weight to the repository:

- `images/portrait.png`, `portrait_old.png`, `portrait_old (2).png`, `HeadShot.png`,
  `Version_1.png`, `Version_2.png`, `google_scholar_headshot_1000x1000.png`,
  `ChatGPT Image Aug 29, 2026, 07_16_02 AM.png`
- `images/brain-tumor-*.jpg`, `multi-organ-segmentation.jpg`, `survival-analysis.jpg`,
  `functional-fMRI.jpg`, `spie-2026-headshot.png` — replaced by the `fig-*.jpg` versions
- `Conference Image.png`, `Conference Image 2.png`
- `index-before-encoding-fix.html`

Deleting them shrinks the clone from about 24 MB to under 2 MB. Git keeps the history
either way, so nothing is lost.

## Editing

**Adding a publication.** Copy an existing `<article class="pub">` block into the right
`.pub-group`, and keep the four parts: title, `takeaway` (one line on what the paper
found), `authors` with your own name in `<b>`, and `venue`. The BibTeX block needs a
unique `id`, matched by the button's `data-bib`.

**Adding news.** Copy an `<li>` in the `.news` list. Newest first.

**Changing the tagline.** It is the `<p class="tagline">` line in the hero. One line,
about what the work is for rather than which method it uses.

**Adding a publication.** Add it to `cv.tex` in the right `enumerate` block, to
`index.html` in the matching `.pub-group`, and — if it belongs in the top three — to
`resume.tex`. Rebuild the PDFs.

## Notes

- Fonts are Archivo and Source Serif 4 from Google Fonts.
- Dark mode follows the operating system setting; there is no toggle.
- Publication filters and BibTeX copying degrade gracefully with JavaScript disabled:
  every group stays visible and every BibTeX block can still be selected.
- `Ctrl+P` on the homepage prints a clean text version with the navigation, buttons,
  and figures removed.
