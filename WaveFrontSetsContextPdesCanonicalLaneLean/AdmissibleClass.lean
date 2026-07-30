import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure WaveFrontAdmittedObject where
  carrier : Type
  topology : TopologicalSpace carrier
  submanifold : BorelSet carrier
  openSet : Set carrier
  waveFrontSet : Set (TProd (cotangentSpace carrier) (Set.Point (carrier)))
  conclusion : Prop

structure AdmissibleClass where
  object : WaveFrontAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WaveFrontWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse