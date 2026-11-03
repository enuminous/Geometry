# Geometry-Foundation-001 — Evidence Ledger

Release 2026-11-03. **At authoring, Lean build UNVERIFIED**; no Lean compiler or Lake was installed locally. A GitHub Actions job is configured and must complete before recording a compiler PASS.

| Claim | Source | Authoring status |
|---|---|---|
| Component-array symmetry | Geometry.lean / informational_symmetric | SOURCE WRITTEN |
| Source absorption | Geometry.lean / source_absorption | SOURCE WRITTEN |
| Arbitrary split invariance | Geometry.lean / affine_split_invariance | SOURCE WRITTEN |
| Source-only observation blindness | Geometry.lean / source_only_observable_blind | SOURCE WRITTEN |
| Reduced Bianchi obstruction | Geometry.lean / explicit_obstruction | SOURCE WRITTEN |
| Curvature profile nonconstancy | Geometry.lean / proposedRicciScalar_nonconstant | SOURCE WRITTEN |
| Tensor covariance | Not implemented | UNRESOLVED |
| Geometric derivation of Bianchi relation | Explicit premise, not derived | UNRESOLVED |
| Metric yielding numeric witness | Not constructed | UNRESOLVED |
| Einstein+matter coupled solution | Not constructed | UNRESOLVED |
| Real-world distinction from κ=0 | No observation or likelihood | UNRESOLVED |

To verify, run lake update, lake build Geometry, lake env lean Axioms.lean, and python3 sanity.py. Preserve the exact source commit, CI run, exit codes, dependencies and axiom output.

Sources: https://github.com/enuminous/EFMW/blob/main/review/OPEN_OBLIGATIONS.md ; https://github.com/enuminous/papers/blob/main/THEOREMS_IN_PLAIN_ENGLISH.md

**A mathematically sound and fully traceable construction can be physically false or unidentifiable. G1/G2 never imply G3.**
