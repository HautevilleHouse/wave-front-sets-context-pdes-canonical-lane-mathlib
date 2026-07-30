import WaveFrontSetsContextPdesCanonicalLaneLean.PDEPropagation

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure HyperbolicPropagationPackage where
  pdePropagation : PDEPropagationPackage
  hyperbolicOperator : Prop
  finiteSpeedPropagation : Prop
  lacunas : Prop
  hyperbolicOperatorClosed : hyperbolicOperator
  finiteSpeedPropagationClosed : finiteSpeedPropagation
  lacunasClosed : lacunas

structure HyperbolicPropagationEvidence {P : PDEPropagationPackage} (H : HyperbolicPropagationPackage) where
  hyperbolicOperatorClosed : H.hyperbolicOperator
  finiteSpeedPropagationClosed : H.finiteSpeedPropagation
  lacunasClosed : H.lacunas

def HyperbolicPropagationClosed {P : PDEPropagationPackage} (H : HyperbolicPropagationPackage) : Prop :=
  H.hyperbolicOperator ∧ H.finiteSpeedPropagation ∧ H.lacunas

theorem hyperbolic_propagation_closed_from_evidence {P : PDEPropagationPackage} (H : HyperbolicPropagationPackage) (E : HyperbolicPropagationEvidence H) :
  HyperbolicPropagationClosed H :=
  And.intro E.hyperbolicOperatorClosed (And.intro E.finiteSpeedPropagationClosed E.lacunasClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse