import canonicalLaneMathlib.AdmissibleClass
import WaveFrontSetsContextPdesCanonicalLaneLean.BridgeLemmas

/-!
# Wave Front Sets Package
-/

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure WaveFrontSetsPackage where
  distribution : Type u
  singularSupport : Type v
  waveFrontSet : Prop
  microlocalRegularity : Prop
  propagation : Prop
  waveFrontSetClosed : waveFrontSet
  microlocalRegularityClosed : microlocalRegularity
  propagationClosed : propagation

structure WaveFrontSetsEvidence (W : WaveFrontSetsPackage) where
  waveFrontSetClosed : W.waveFrontSet
  microlocalRegularityClosed : W.microlocalRegularity
  propagationClosed : W.propagation

def WaveFrontSetsClosed (W : WaveFrontSetsPackage) : Prop :=
  W.waveFrontSet ∧ W.microlocalRegularity ∧ W.propagation

theorem wave_front_sets_closed_from_evidence (W : WaveFrontSetsPackage)
    (E : WaveFrontSetsEvidence W) : WaveFrontSetsClosed W := by
  exact And.intro E.waveFrontSetClosed
    (And.intro E.microlocalRegularityClosed E.propagationClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse