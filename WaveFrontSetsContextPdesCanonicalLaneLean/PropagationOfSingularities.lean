import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure PropagationPackage where
  bicharacteristicFlow : Type u
  singularSupport : Prop
  waveFrontPropagation : Prop
  energyEstimates : Prop

structure PropagationEvidence (P : PropagationPackage) where
  singularSupportClosed : P.singularSupport
  waveFrontPropagationClosed : P.waveFrontPropagation
  energyEstimatesClosed : P.energyEstimates

def PropagationClosed (P : PropagationPackage) : Prop :=
  P.singularSupport ∧ P.waveFrontPropagation ∧ P.energyEstimates

theorem propagation_closed_from_evidence (P : PropagationPackage)
    (E : PropagationEvidence P) : PropagationClosed P := by
  exact And.intro E.singularSupportClosed
    (And.intro E.waveFrontPropagationClosed E.energyEstimatesClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse
