import canonicalLaneMathlib.ContextPdePackage

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure ContextPdePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  bundle : Type v
  differentialOperator : Type w
  symbolHomogeneous : Prop
  characteristicSetDefined : Prop
  smoothness : Prop

structure ContextPdeEvidence (C : ContextPdePackage) where
  symbolHomogeneousClosed : C.symbolHomogeneous
  characteristicSetDefinedClosed : C.characteristicSetDefined
  smoothnessClosed : C.smoothness

def ContextPdeClosed (C : ContextPdePackage) : Prop :=
  C.symbolHomogeneous ∧ C.characteristicSetDefined ∧ C.smoothness

theorem context_pde_closed_from_evidence
    (C : ContextPdePackage) (E : ContextPdeEvidence C) :
    ContextPdeClosed C := by
  exact And.intro E.symbolHomogeneousClosed
    (And.intro E.characteristicSetDefinedClosed E.smoothnessClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse