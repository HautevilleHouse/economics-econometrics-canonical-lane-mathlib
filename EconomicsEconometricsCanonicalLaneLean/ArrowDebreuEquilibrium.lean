import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure ArrowDebreuEquilibriumPackage where
  commoditySpace : Type u
  priceSpace : Type v
  consumerPreferences : List (Type w)
  productionSets : List (Type x)
  aggregateEndowment : commoditySpace
  priceVector : priceSpace
  excessDemandZero : Prop
  marketClearing : Prop
  efficiencyCondition : Prop
  paretoOptimality : Prop

def ArrowDebreuEquilibriumClosed (A : ArrowDebreuEquilibriumPackage) : Prop :=
  A.excessDemandZero ∧ A.marketClearing ∧ A.efficiencyCondition ∧ A.paretoOptimality

structure ArrowDebreuEvidence (A : ArrowDebreuEquilibriumPackage) where
  excessDemandZeroClosed : A.excessDemandZero
  marketClearingClosed : A.marketClearing
  efficiencyConditionClosed : A.efficiencyCondition
  paretoOptimalityClosed : A.paretoOptimality

theorem arrow_debreu_equilibrium_closed_from_evidence (A : ArrowDebreuEquilibriumPackage) (E : ArrowDebreuEvidence A) :
    ArrowDebreuEquilibriumClosed A := by
  exact And.intro E.excessDemandZeroClosed (And.intro E.marketClearingClosed (And.intro E.efficiencyConditionClosed E.paretoOptimalityClosed))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse