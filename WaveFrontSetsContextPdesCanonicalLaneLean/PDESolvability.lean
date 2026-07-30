import canonicalLaneMathlib.AdmissibleClass
import WaveFrontSetsContextPdesCanonicalLaneLean.WaveFrontSets

/-!
# PDE Solvability Package
-/

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure PDESolvabilityPackage (W : WaveFrontSetsPackage) where
  linearPDE : Type u
  solutionExists : Prop
  uniqueness : Prop
  regularity : Prop
  solutionExistsClosed : solutionExists
  uniquenessClosed : uniqueness
  regularityClosed : regularity

structure PDESolvabilityEvidence (W : WaveFrontSetsPackage)
    (P : PDESolvabilityPackage W) where
  solutionExistsClosed : P.solutionExists
  uniquenessClosed : P.uniqueness
  regularityClosed : P.regularity

def PDESolvabilityClosed (W : WaveFrontSetsPackage)
    (P : PDESolvabilityPackage W) : Prop :=
  P.solutionExists ∧ P.uniqueness ∧ P.regularity

theorem pde_solvability_closed_from_evidence (W : WaveFrontSetsPackage)
    (P : PDESolvabilityPackage W) (E : PDESolvabilityEvidence W P) :
    PDESolvabilityClosed W P := by
  exact And.intro E.solutionExistsClosed
    (And.intro E.uniquenessClosed E.regularityClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse