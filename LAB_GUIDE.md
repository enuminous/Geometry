# Interactive Geometry Laboratory — v0.2.0

**Monolithic LLC / EFMW research program · November 3, 2026**

Open [the laboratory](index.html) (or the repository's GitHub Pages root if enabled). It is one self-contained HTML file: no external JavaScript libraries, CDN, accounts, network requests, or server-side computation.

## Scope and evidence gates

- **G1 — Construction:** 4×4 arrays, symmetry, and source addition can be examined. This is **not** a proof of tensor covariance.
- **G2 — Conditional consequences:** explicit algebraic source-reallocation identities and a reduced Bianchi *premise* have falsifiable consequences, but do not constitute a fully coupled general-relativistic solution.
- **G3 — Physical discrimination:** an independent observation that separates nonzero κI from all admissible κ=0 models remains **UNRESOLVED**. No synthetic test may change this gate.
- A traceable and mathematically consistent construction may still be physically false, redundant, or observationally unidentifiable.

## Eight interactive modes

| Mode | Controls and observable outputs | Non-claim |
|---|---|---|
| Mission control | 18 experiment presets, result boundaries, launch buttons | Does not enumerate every possible future experiment |
| Source-split | Edit every entry in 4×4 T/I/J, enforce symmetry, change κ and observable, four heatmaps, invariance residuals | Reallocated matter is not necessarily physically admissible |
| Conservation & FLRW | Power p, time t, scalar divergence, κ, derivative step h and plotting limits; R, ∂R, div(I), exchange and convergence charts | The curved-spacetime Bianchi identity is not Lean-derived here |
| Coordinate firewall | Rotate, shear, scale and alter a 2×2 tensor; metric and tensor heatmaps, basis visualization, determinant and conditioning diagnostics | Not full 4D covariance of ME-006 |
| Identifiability | Unrestricted/fixed/measured T, injected coupling, source and matter noise, samples, deterministic seed, calibration trials; synthetic series and histograms | Not real physical detection, nor a validated statistical test |
| Counterexample atlas | Eight direct EFMW/geometry stress tests and jump-to-mode controls | Countermodels depend on explicit hypotheses |
| Verification harness | 18 browser checks, tolerance-aware regressions, explicit counterexample and unresolved items, CSV export | Does not execute Lean kernel |
| Evidence notebook | Locally editable claim/status/source notes, JSON state backup/import, CSV ledger | Not independent authentication or external synchronization |

## Experiment integrity

The browser source-split calculation uses `S=T+κI`, `T′=T+κJ`, `I′=I−J`, `S′=T′+κI′`. The source-only observer cannot distinguish S from S′. A separate matter measurement may distinguish the two; whether both sectors obey the same independent matter equations is not determined here.

The flat-FLRW mode specifies `ds²=−dt²+a(t)²(dx²+dy²+dz²)`, `a=t^p` for `t>0`, with `R=6p(2p−1)/t²`. The reduced condition `div(I)=div(T_scalar)+½∂tR` remains an input premise in the repository's Lean source. The site checks analytic formulas and numerical differentiation but does not compute the full Riemann tensor or prove a coupled ME-007 solution.

The coordinate mode uses `x=A x′`, `g′=AᵀgA`, `T′=AᵀTA`. It reports invariant metric-contracted trace and a generally noninvariant naïve component trace. Ill-conditioned bases fail closed.

The identifiability mode generates only synthetic observations `y=T+κI+ε`; it uses separate synthetic calibration and holdout trials to show how the answer depends on constraints on ordinary matter. An unrestricted source-only model can absorb κI without an observable difference. No practical operating-system, plant, observatory, or instrument measurements are used.

## Verification and delivery

- For all browser checks, open **Verification harness** and choose **Run all checks**. Inspect any FAIL, COUNTEREXAMPLE, and UNRESOLVED entries separately. Use Export test CSV or Export receipt.
- For source/geometry proofs run `lake update`, `lake build Geometry`, and `lake env lean Axioms.lean` in the Lean project; check actual CI logs with the exact commit. Browser PASS is not Lean PASS.
- Every graph is high-DPI Canvas and the chart resolution / sample density can be changed in the sidebar. Coordinate conditioning, derivative step h, and calibration split sizes are independent numerical controls.
- Session notes are saved to browser local storage where available; use JSON export for portable backup. Shared-state links deliberately omit private notebook entries.
- Source and evidence: [Geometry.lean](Geometry.lean), [Counterexample Atlas](COUNTEREXAMPLE_ATLAS.md), [Proof Receipt](PROOF_RECEIPT.md), and [EFMW unresolved obligations](https://github.com/enuminous/EFMW/blob/main/review/OPEN_OBLIGATIONS.md).

**Research limitation:** this is a finite curated experiment suite. New physical tests require independent models, observables, data, and evaluation protocols, not merely additional control sliders.