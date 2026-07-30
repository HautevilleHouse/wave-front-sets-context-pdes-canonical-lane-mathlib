import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveFrontSetsContextPdesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WaveFrontWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end WaveFrontSetsContextPdesCanonicalLaneLean
end HautevilleHouse