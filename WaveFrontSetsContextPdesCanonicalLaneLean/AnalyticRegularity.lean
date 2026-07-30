import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure AnalyticRegularityPackage where
  symbolOrder : Type u
  waveFrontSet : Type v
  microSupport : Prop
  sobolevWaveFront : Prop
  analyticWaveFront : Prop

structure AnalyticRegularityEvidence (A : AnalyticRegularityPackage) where
  microSupportClosed : A.microSupport
  sobolevWaveFrontClosed : A.sobolevWaveFront
  analyticWaveFrontClosed : A.analyticWaveFront

def AnalyticRegularityClosed (A : AnalyticRegularityPackage) : Prop :=
  A.microSupport ∧ A.sobolevWaveFront ∧ A.analyticWaveFront

theorem analytic_regularity_closed_from_evidence (A : AnalyticRegularityPackage)
    (E : AnalyticRegularityEvidence A) : AnalyticRegularityClosed A := by
  exact And.intro E.microSupportClosed
    (And.intro E.sobolevWaveFrontClosed E.analyticWaveFrontClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse
