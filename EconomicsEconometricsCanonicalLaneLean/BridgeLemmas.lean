import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse