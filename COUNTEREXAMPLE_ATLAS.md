# EFMW ME-006/007 — Counterexample Atlas

These cases target the **specific** proposed source split; this is not a textbook pathology catalogue.

## CEX-001: On-shell scalar does not ensure separate conservation

ME-006 is described as I = scalar stress + Ricci. In the reduced contracted-Bianchi relation, div(I) = div(scalar stress) + (1/2) grad(R). The explicit witness has scalarDiv=0, curvatureGrad=-8/3, and infoDiv=-4/3.

The relation holds and information-sector divergence is nonzero. Lean encodes the relation as an **explicit premise**. No Lorentzian metric or full Einstein equation has been constructed. This is a conditional countermodel, not a verified physical FLRW solution.

## CEX-002: Total-source allocation is nonunique

For S=T+κI and any J, let T'=T+κJ and I'=I-J. Then S=T'+κI'. This is a source-split identity only when the ordinary sector can be reallocated. Independently fixed matter dynamics may forbid it.

## CEX-003: Limited observational indistinguishability

An observable depending **only on S** receives identical inputs from these two decompositions. An independent matter-sector measurement can distinguish them. A full physical no-go theorem has not been established.

## CEX-004: Curvature profile is not a metric proof

The proposed R(t)=4/(3t²) has different values at t=1 and t=2. No full connection, Ricci or time-derivative derivation has been proved in this release.

## Gates

- G1: Type and symmetry checks do not prove covariance.
- G2: Algebraic source reallocation and reduced conditional conservation checks do not prove full GR compatibility.
- G3: Does nonzero κI predict a unique, independently measurable effect against admissible κ=0 alternatives? **UNRESOLVED**.

**Green means the specified mathematical check passed, not that a physical hypothesis is true.**
