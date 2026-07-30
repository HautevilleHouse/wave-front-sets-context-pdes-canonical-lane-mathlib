import WaveFrontSetsContextPdesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure SingularSupportPackage where
  distribution : Type u
  testFunctionSpace : Type v
  singularSupportSet : Set (Type w)
  complementIsSmooth : Prop
  complementIsSmoothClosed : complementIsSmooth

structure SingularSupportEvidence (S : SingularSupportPackage) where
  complementIsSmoothClosed : S.complementIsSmooth

def SingularSupportClosed (S : SingularSupportPackage) : Prop :=
  S.complementIsSmooth

theorem singular_support_closed_from_evidence (S : SingularSupportPackage) (E : SingularSupportEvidence S) :
  SingularSupportClosed S :=
  E.complementIsSmoothClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse