import canonicalLaneMathlib.SingularSpectrumPackage

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure SingularSpectrumPackage {C : ContextPdePackage} {P : C} {W : WaveFrontSetPackage P} where
  singularSpectrum : Type u
  analyticWaveFrontSet : Type v
  spectralCriterion : Prop
  propagationOfSingularities : Prop
  spectralCriterionClosed : Prop
  propagationClosed : Prop

structure SingularSpectrumEvidence {C : ContextPdePackage} {P : C} {W : WaveFrontSetPackage P}
    (S : SingularSpectrumPackage C P W) where
  spectralCriterionClosed : S.spectralCriterionClosed
  propagationClosed : S.propagationClosed

def SingularSpectrumClosed {C : ContextPdePackage} {P : C} {W : WaveFrontSetPackage P}
    (S : SingularSpectrumPackage C P W) : Prop :=
  S.spectralCriterionClosed ∧ S.propagationClosed

theorem singular_spectrum_closed_from_evidence
    {C : ContextPdePackage} {P : C} {W : WaveFrontSetPackage P}
    (S : SingularSpectrumPackage C P W) (E : SingularSpectrumEvidence S) :
    SingularSpectrumClosed S := by
  exact And.intro E.spectralCriterionClosed E.propagationClosed

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse