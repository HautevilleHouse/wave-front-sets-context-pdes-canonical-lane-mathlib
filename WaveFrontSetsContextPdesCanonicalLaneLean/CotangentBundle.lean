import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure CotangentBundlePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  cotangentSpace : Type v
  projectionMap : cotangentSpace → manifold
  fiberRank : ℕ
  smoothStructure : manifold ≃ₛ manifold
  localTrivialization : Prop
  smoothTransition : Prop

structure CotangentBundleEvidence (C : CotangentBundlePackage) where
  localTrivializationClosed : C.localTrivialization
  smoothTransitionClosed : C.smoothTransition

def CotangentBundleClosed (C : CotangentBundlePackage) : Prop :=
  C.localTrivialization ∧ C.smoothTransition

theorem cotangent_bundle_closed_from_evidence
    (C : CotangentBundlePackage) (E : CotangentBundleEvidence C) :
    CotangentBundleClosed C := by
  exact And.intro E.localTrivializationClosed E.smoothTransitionClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse