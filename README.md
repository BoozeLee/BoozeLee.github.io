# Portfolio

This repository publishes <https://boozelee.github.io>.

It is one static file. There is no build step, no framework, no bundler and no
analytics: `index.html` is served as-is by GitHub Pages, which is why `.nojekyll`
is present. You can read the entire site by viewing source, and the rendered
page makes no third-party requests.

## Why it is built this way

The portfolio is the argument that I can do evaluation and verification work
properly. If it were a heavy site with a toolchain, the reader would have to
trust the toolchain. One file means the claims on the page can be read exactly
as they are served.

Every number on the page is shown with the command that reproduces it from a
clean clone, and pinned to a specific commit, so a reader can check the claim
instead of taking it on trust.

## Content rules

- Link only to public repositories that actually work and are documented.
- Every figure traces to a recorded measurement. A claim I cannot re-derive
  gets removed, not softened.
- Private repositories are named as private, with no test or adoption claims
  I have not measured.
- No claim about customers, revenue, deployments, or speaking engagements,
  because I have none of those.
- Do not publish private contact details, unfinished experiments, or internal
  agent prompts.

## Local preview

```bash
python3 -m http.server 8000
# then open http://localhost:8000/
```

## Contact

Kiliaan Vanvoorden — <bakerstreetbandit@zohomail.eu> · Riemst, Belgium