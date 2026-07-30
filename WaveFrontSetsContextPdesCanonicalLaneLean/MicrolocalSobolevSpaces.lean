import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

structure MicrolocalSobolevPackage where
  sobolevSpaceIndex : Type u
  microlocalSobolevNorm : Prop
  embeddingTheorem : Prop
  regularityUnderPsiDO : Prop

structure MicrolocalSobolevEvidence (M : MicrolocalSobolevPackage) where
  microlocalSobolevNormClosed : M.microlocalSobolevNorm
  embeddingTheoremClosed : M.embeddingTheorem
  regularityUnderPsiDOClosed : M.regularityUnderPsiDO

def MicrolocalSobolevClosed (M : MicrolocalSobolevPackage) : Prop :=
  M.microlocalSobolevNorm ∧ M.embeddingTheorem ∧ M.regularityUnderPsiDO

theorem microlocal_sobolev_closed_from_evidence (M : MicrolocalSobolevPackage)
    (E : MicrolocalSobolevEvidence M) : MicrolocalSobolevClosed M := by
  exact And.intro E.microlocalSobolevNormClosed
    (And.intro E.embeddingTheoremClosed E.regularityUnderPsiDOClosed)

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse
