# delta-gfx-shader-lab

`delta-gfx-shader-lab` keeps a focused Dart implementation around graphics. The project goal is to design a Dart verification harness for shader systems, covering format conversion, round-trip fixtures, and failure-oriented tests.

## Use Case

This is intentionally local and self-contained so it can be inspected without credentials, services, or seeded history.

## Delta Gfx Shader Lab Review Notes

For a quick review, compare `geometry span` with `shader drift` before reading the middle cases.

## Highlights

- `fixtures/domain_review.csv` adds cases for geometry span and atlas pressure.
- `metadata/domain-review.json` records the same cases in structured form.
- `config/review-profile.json` captures the read order and the two review questions.
- `examples/delta-gfx-shader-walkthrough.md` walks through the case spread.
- The Dart code includes a review path for `geometry span` and `shader drift`.
- `docs/field-notes.md` explains the strongest and weakest cases.

## Code Layout

The repository has two validation layers: the original compact policy fixture and the domain review fixture. They are separate so one can change without hiding failures in the other.

The Dart addition stays small enough to inspect in one sitting.

## Run The Check

```powershell
powershell -NoProfile -ExecutionPolicy Bypass -File scripts/verify.ps1
```

## Regression Path

The same command runs the local verification path. The highest-scoring domain case is `stale` at 229, which lands in `ship`. The most cautious case is `edge` at 111, which lands in `watch`.

## Future Work

This remains a local project with deterministic fixtures. It does not depend on credentials, hosted services, or live data. Future work should add richer malformed inputs before widening the public API.
