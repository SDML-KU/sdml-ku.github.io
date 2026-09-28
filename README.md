# SDML Lab website

Stochastic Dynamics and Machine Learning Lab, Korea University: **[sdml-ku.github.io](https://sdml-ku.github.io)**

A plain [Jekyll](https://jekyllrb.com) site. Publications are rendered from BibTeX by
[jekyll-scholar](https://github.com/inukshuk/jekyll-scholar). Pushing to `main`
rebuilds and deploys the site automatically (`.github/workflows/deploy.yml`).

## Common edits

| To change…            | Edit                              |
|-----------------------|-----------------------------------|
| Publications          | `_bibliography/papers.bib`        |
| People                | `_data/members.yml` (+ photo in `images/portraits/`) |
| Home / Teaching / Contact text | `index.md`, `teaching.md`, `contact.md` |
| Navigation, lab name, bolded author names | `_config.yml` |
| Look and feel         | `assets/style.css`                |

### Add a paper

Paste the BibTeX entry (e.g. from Google Scholar, DBLP, or OpenReview) into
`_bibliography/papers.bib`. The page groups papers by `year` automatically;
within a year they appear in the order listed in the file.
Optionally add any of these fields to show badges and links:

```bibtex
  abbr  = {NeurIPS},                % venue badge
  pdf   = {https://...},            % [PDF]
  code  = {https://github.com/...}, % [Code]
  arxiv = {2401.01234},             % [arXiv]
  url   = {https://...},            % [Website]
  doi   = {10.1145/...},            % [DOI]
```

Lab members listed in `highlight_authors` in `_config.yml` are shown in bold;
the spelling must match the BibTeX author names ("First Last").

### Add a member

Add an entry to `_data/members.yml`:

```yaml
- name: Jane Doe
  role: phd            # pi | phd | ms | intern | alumni
  title: Ph.D. Student
  image: /images/portraits/jane_doe.jpg   # optional
  website: https://janedoe.github.io      # name links here (falls back to github)
  interests: One short line.              # optional
```

When someone graduates, change `role` to `alumni`.

## Run locally

```sh
bundle install
bundle exec jekyll serve   # http://localhost:4000
```
