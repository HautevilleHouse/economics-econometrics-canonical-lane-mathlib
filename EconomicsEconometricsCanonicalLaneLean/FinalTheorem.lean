import canonicalLaneMathlib.AdmissibleClass
import EconomicsEconometricsCanonicalLaneLean.UtilityTheoryPreferences
import EconomicsEconometricsCanonicalLaneLean.ArrowDebreuEquilibrium
import EconomicsEconometricsCanonicalLaneLean.GrowthModel
import EconomicsEconometricsCanonicalLaneLean.AssetPricing
import EconomicsEconometricsCanonicalLaneLean.EfficiencyAndWelfare

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.endpointSatisfied

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact Or.inl A.endpointSatisfied

def ConstrainedEconomicsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_economics_endgame (A : AdmissibleClass) :
    ConstrainedEconomicsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
