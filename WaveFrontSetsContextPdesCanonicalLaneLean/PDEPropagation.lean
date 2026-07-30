import WaveFrontSetsContextPdesCanonicalLaneLean.WaveFrontSet

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure PDEPropagationPackage where
  waveFrontSet : WaveFrontSetPackage
  pdeOperator : Type u
  principalSymbol : Type v
  propagationBicharacteristicFlow : Prop
  wavefrontStaysInside : Prop
  propagationBicharacteristicFlowClosed : propagationBicharacteristicFlow
  wavefrontStaysInsideClosed : wavefrontStaysInside

structure PDEPropagationEvidence {W : WaveFrontSetPackage} (P : PDEPropagationPackage) where
  propagationBicharacteristicFlowClosed : P.propagationBicharacteristicFlow
  wavefrontStaysInsideClosed : P.wavefrontStaysInside

def PDEPropagationClosed {W : WaveFrontSetPackage} (P : PDEPropagationPackage) : Prop :=
  P.propagationBicharacteristicFlow ∧ P.wavefrontStaysInside

theorem pde_propagation_closed_from_evidence {W : WaveFrontSetPackage} (P : PDEPropagationPackage) (E : PDEPropagationEvidence P) :
  PDEPropagationClosed P :=
  And.intro E.propagationBicharacteristicFlowClosed E.wavefrontStaysInsideClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse