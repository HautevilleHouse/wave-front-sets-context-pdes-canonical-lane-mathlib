import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure DistributionPackage (C : CotangentBundlePackage) where
  distribution : C.manifold → C.cotangentSpace → ℝ
  support : Set (C.cotangentSpace)
  singularity : Prop
  waveFrontSet : Set (TProd (C.cotangentSpace) (Set.Point (C.manifold)))
  smoothness : ℕ

structure DistributionEvidence {C : CotangentBundlePackage}
    (D : DistributionPackage C) where
  singularityClosed : D.singularity
  distributionSmooth : Prop
  distributionSmoothClosed : distributionSmooth

def DistributionClosed {C : CotangentBundlePackage}
    (D : DistributionPackage C) : Prop :=
  D.singularity ∧ DistributionEvidence.distributionSmooth

theorem distribution_closed_from_evidence
    {C : CotangentBundlePackage}
    (D : DistributionPackage C) (E : DistributionEvidence D) :
    DistributionClosed D := by
  exact And.intro E.singularityClosed E.distributionSmoothClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse