# Geometry Foundation — EFMW ME-006/ME-007

This repository begins with a bounded Lean 4 formalization of source-split identifiability and a **conditional** Bianchi conservation obstruction. It does **not** establish a new gravitational interaction or a full Lorentzian tensor calculation.

- `Geometry.lean`: mathematical statements and proofs about component arrays and reduced conservation assumptions.
- `Axioms.lean`: proof-dependency inspection commands.
- `COUNTEREXAMPLE_ATLAS.md`: EFMW-specific negative controls and limits.
- `PROOF_RECEIPT.md`: PASS/FAIL/UNRESOLVED audit ledger.
- `lean-toolchain` / `lakefile.toml`: pinned Lean / Mathlib configuration.

**Gate G1:** well-typed components are not covariant tensors. **Gate G2:** source-only observations cannot uniquely separate an unrestricted `T + κI`; conditional gradient inputs can obstruct separate conservation. **Gate G3:** physical discrimination of nonzero `κI` from zero remains **UNRESOLVED**.

The flat ZIP also provides exact arithmetic sanity tests and root-level workflow template. Until an actual Lean build succeeds, claims about Lean compilation remain **UNVERIFIED**. A green mathematical check never establishes empirical truth.

Canonical references: [ME-006 proof notes](https://github.com/enuminous/papers/blob/main/THEOREMS_IN_PLAIN_ENGLISH.md) · [ME-007 open obligations](https://github.com/enuminous/EFMW/blob/main/review/OPEN_OBLIGATIONS.md).
