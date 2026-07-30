import canonicalLaneMathlib.WaveFrontSetPackage

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure WaveFrontSetPackage {C : ContextPdePackage} (P : C) where
  conormalBundle : Type u
  waveFrontSet : Type v
  microSupport : Prop
  propagation : Prop
  waveFrontSetClosed : Prop

structure WaveFrontSetEvidence {C : ContextPdePackage} {P : C} (W : WaveFrontSetPackage P) where
  microSupportClosed : W.microSupport
  propagationClosed : W.propagation
  waveFrontSetClosedClosed : W.waveFrontSetClosed

def WaveFrontSetClosed {C : ContextPdePackage} {P : C} (W : WaveFrontSetPackage P) : Prop :=
  W.microSupport ∧ W.propagation ∧ W.waveFrontSetClosed

theorem wave_front_set_closed_from_evidence
    {C : ContextPdePackage} {P : C} (W : WaveFrontSetPackage P)
    (E : WaveFrontSetEvidence W) : WaveFrontSetClosed W := by
  exact And.intro E.microSupportClosed
    (And.intro E.propagationClosed E.waveFrontSetClosedClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse