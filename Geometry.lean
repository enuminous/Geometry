import Mathlib

/-!
Geometry-Foundation-001: EFMW ME-006 / ME-007 source identifiability and
reduced Bianchi obstruction.

STATUS: proof source, not a verification of physical EFMW.
4x4 coordinate components are NOT a covariant-tensor formalization.
The ReducedBianchi identity is an explicit *assumption*, not derived here
from a Lorentzian metric, Levi-Civita connection, or Einstein equations.
-/

namespace GeometryFoundation

/-- Four-by-four coordinate-component data. No coordinate transformation law
is included: Components is not itself a mathematical tensor bundle. -/
abbrev Components := Fin 4 → Fin 4 → ℝ

def zeroComponents : Components := fun _ _ => 0

def constantComponents (a : ℝ) : Components := fun _ _ => a

/-- Symmetry is an algebraic component condition, not covariance. -/
def IsSymmetric (A : Components) : Prop :=
  ∀ μ ν, A μ ν = A ν μ

/-- ME-006's advertised decomposition in a *component-level analogue*:
scalar stress contribution plus Ricci contribution. No metric is constructed. -/
def informationalComponents (scalarStress ricci : Components) : Components :=
  fun μ ν => scalarStress μ ν + ricci μ ν

/-- Algebraic model of the ME-007 total source T + κ I. -/
def totalSource (ordinary info : Components) (κ : ℝ) : Components :=
  fun μ ν => ordinary μ ν + κ * info μ ν

/-- A component array assembled from two symmetric arrays is symmetric. -/
theorem informational_symmetric
    (scalarStress ricci : Components)
    (hs : IsSymmetric scalarStress) (hr : IsSymmetric ricci) :
    IsSymmetric (informationalComponents scalarStress ricci) := by
  intro μ ν
  simp only [informationalComponents]
  rw [hs μ ν, hr μ ν]

/-- The total source retains symmetry under its explicit premises. -/
theorem totalSource_symmetric
    (ordinary info : Components) (κ : ℝ)
    (ht : IsSymmetric ordinary) (hi : IsSymmetric info) :
    IsSymmetric (totalSource ordinary info κ) := by
  intro μ ν
  simp only [totalSource]
  rw [ht μ ν, hi μ ν]

/-- Every κ I term may be absorbed into an unrestricted ordinary-source
component array. This is algebra, not physical equivalence if independent
matter equations restrict the ordinary source. -/
theorem source_absorption
    (ordinary info : Components) (κ : ℝ) :
    totalSource ordinary info κ =
      totalSource (totalSource ordinary info κ) zeroComponents 0 := by
  funext μ ν
  simp [totalSource, zeroComponents]

/-- Arbitrarily reallocating a component array J between sectors preserves
the total source. The tensor/symmetry and physical-matter admissibility of J
are NOT established by this purely algebraic equality. -/
theorem affine_split_invariance
    (ordinary info J : Components) (κ : ℝ) :
    totalSource (fun μ ν => ordinary μ ν + κ * J μ ν)
      (fun μ ν => info μ ν - J μ ν) κ =
    totalSource ordinary info κ := by
  funext μ ν
  dsimp [totalSource]
  ring

/-- If an observable has *only the total source* as its input, it cannot
distinguish absorbed source terms. This theorem does not cover observables
that independently measure the matter sector or scalar degrees of freedom. -/
theorem source_only_observable_blind
    {α : Type*} (observation : Components → α)
    (ordinary info : Components) (κ : ℝ) :
    observation (totalSource ordinary info κ) =
      observation (totalSource (totalSource ordinary info κ) zeroComponents 0) := by
  rw [source_absorption]

/-- Explicit nonzero-source witness: two distinct decompositions have the
same total components at κ = 1. -/
theorem explicit_nonunique_split :
    zeroComponents ≠ constantComponents 1 ∧
    totalSource zeroComponents (constantComponents 1) 1 =
    totalSource (constantComponents 1) zeroComponents 1 := by
  constructor
  · intro h
    have h00 := congrArg (fun A : Components => A (0 : Fin 4) (0 : Fin 4)) h
    norm_num [zeroComponents, constantComponents] at h00
  · funext μ ν
    norm_num [totalSource, zeroComponents, constantComponents]

/-!
Reduced-Bianchi ***conditional*** sector: if one supplies the relation
  div(I) = div(T_scalar) + (1/2) grad(R),
then an on-shell scalar sector and nonzero curvature gradient obstruct
separate conservation of I. This is not a formal derivation of the
contracted Bianchi identity from a specific spacetime metric.
-/

/-- Abstract, single-component contraction of a supplied Bianchi relation.
The explicit identity field is a premise, never an inferred theorem. -/
structure ReducedBianchi where
  scalarDiv : ℝ
  infoDiv : ℝ
  curvatureGrad : ℝ
  identity : infoDiv = scalarDiv + curvatureGrad / 2

/-- Under the declared relation, on-shell scalar conservation and a varying
curvature scalar force the informational component's divergence nonzero. -/
theorem nonzero_info_div_of_gradient
    (b : ReducedBianchi)
    (scalarOnShell : b.scalarDiv = 0)
    (curvatureVaries : b.curvatureGrad ≠ 0) :
    b.infoDiv ≠ 0 := by
  intro infoZero
  have h := b.identity
  rw [infoZero, scalarOnShell] at h
  have curvatureZero : b.curvatureGrad = 0 := by
    linarith
  exact curvatureVaries curvatureZero

/-- Closed arithmetic countermodel for the reduced Bianchi identity.
The numbers match a proposed FLRW curvature-gradient witness at t = 1,
but this file does NOT derive them from a Lorentzian metric. -/
def explicitBianchiWitness : ReducedBianchi where
  scalarDiv := 0
  infoDiv := -(4 / 3)
  curvatureGrad := -(8 / 3)
  identity := by norm_num

theorem explicit_obstruction :
    explicitBianchiWitness.scalarDiv = 0 ∧
    explicitBianchiWitness.curvatureGrad ≠ 0 ∧
    explicitBianchiWitness.infoDiv ≠ 0 := by
  constructor
  · rfl
  constructor
  · norm_num [explicitBianchiWitness]
  · norm_num [explicitBianchiWitness]

/-- A proposed dust-FLRW scalar-curvature *profile* in units and sign
conventions fixed externally; this is not a Ricci computation from a metric. -/
def proposedRicciScalar (t : ℝ) : ℝ := 4 / (3 * t ^ 2)

/-- The proposed profile is not constant. This is a numerical algebra check,
not a curvature-tensor construction or a physical observation. -/
theorem proposedRicciScalar_nonconstant :
    proposedRicciScalar 1 ≠ proposedRicciScalar 2 := by
  norm_num [proposedRicciScalar]

/-- The witness of the physical source split is restricted to purely
source-based observables. Geometric and empirical adequacy remain open. -/
theorem zero_source_limit (ordinary info : Components) :
    totalSource ordinary info 0 = ordinary := by
  funext μ ν
  simp [totalSource]

end GeometryFoundation
