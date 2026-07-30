import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure SolowGrowthModelPackage where
  productionFunction : ℝ → ℝ → ℝ
  capitalAccumulation : ℝ → ℝ → ℝ
  savingsRate : ℝ
  depreciationRate : ℝ
  steadyStateExists : Prop
  convergence : Prop

structure SolowGrowthModelEvidence (S : SolowGrowthModelPackage) where
  steadyStateExistsClosed : S.steadyStateExists
  convergenceClosed : S.convergence

def SolowGrowthModelClosed (S : SolowGrowthModelPackage) : Prop :=
  S.steadyStateExists ∧ S.convergence

theorem solow_growth_model_closed_from_evidence (S : SolowGrowthModelPackage)
    (Ev : SolowGrowthModelEvidence S) : SolowGrowthModelClosed S :=
  And.intro Ev.steadyStateExistsClosed Ev.convergenceClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse