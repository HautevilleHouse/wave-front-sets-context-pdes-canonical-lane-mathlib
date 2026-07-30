import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure ParametrixPackage where
  pseudodifferentialSymbol : Type u
  parametrixConstruction : Prop
  microlocalParametrix : Prop
  compositionEstimates : Prop

structure ParametrixEvidence (P : ParametrixPackage) where
  parametrixConstructionClosed : P.parametrixConstruction
  microlocalParametrixClosed : P.microlocalParametrix
  compositionEstimatesClosed : P.compositionEstimates

def ParametrixClosed (P : ParametrixPackage) : Prop :=
  P.parametrixConstruction ∧ P.microlocalParametrix ∧ P.compositionEstimates

theorem parametrix_closed_from_evidence (P : ParametrixPackage)
    (E : ParametrixEvidence P) : ParametrixClosed P := by
  exact And.intro E.parametrixConstructionClosed
    (And.intro E.microlocalParametrixClosed E.compositionEstimatesClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse
