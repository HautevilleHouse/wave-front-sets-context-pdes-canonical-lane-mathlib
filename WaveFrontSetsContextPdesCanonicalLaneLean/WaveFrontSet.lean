import WaveFrontSetsContextPdesCanonicalLaneLean.SingularSupport

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure WaveFrontSetPackage where
  singularSupport : SingularSupportPackage
  conormalDirection : Type u
  wavefrontSet : Set (Type v)
  closedUnderScalarMultiplication : Prop
  directionalRegularity : Prop
  closedUnderScalarMultiplicationClosed : closedUnderScalarMultiplication
  directionalRegularityClosed : directionalRegularity

structure WaveFrontSetEvidence {S : SingularSupportPackage} (W : WaveFrontSetPackage) where
  closedUnderScalarMultiplicationClosed : W.closedUnderScalarMultiplication
  directionalRegularityClosed : W.directionalRegularity

def WaveFrontSetClosed {S : SingularSupportPackage} (W : WaveFrontSetPackage) : Prop :=
  W.closedUnderScalarMultiplication ∧ W.directionalRegularity

theorem wavefront_set_closed_from_evidence {S : SingularSupportPackage} (W : WaveFrontSetPackage) (E : WaveFrontSetEvidence W) :
  WaveFrontSetClosed W :=
  And.intro E.closedUnderScalarMultiplicationClosed E.directionalRegularityClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse