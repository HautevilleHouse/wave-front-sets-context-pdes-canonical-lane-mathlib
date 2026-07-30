import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure WaveFrontSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaveFrontAdmittedObject where
  space : WaveFrontSpace
  manifold : Prop
  waveFrontSet : Prop
  pdeSolution : Prop
  conclusion : waveFrontSet ∧ pdeSolution

structure WaveFrontEndgameState where
  object : WaveFrontAdmittedObject

def WaveFrontWitnessClosed (O : WaveFrontAdmittedObject) : Prop :=
  O.waveFrontSet ∧ O.pdeSolution

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse