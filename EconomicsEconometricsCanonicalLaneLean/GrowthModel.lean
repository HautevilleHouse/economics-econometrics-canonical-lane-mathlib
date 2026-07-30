import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure RamseyCassKoopmansPackage where
  aggregateProduction : Type u
  capitalStock : Type v
  consumption : Type w
  householdUtility : Prop
  firmProfitMaximization : Prop
  marketEquilibrium : Prop
  steadyStateExistence : Prop
  saddlePathStability : Prop

structure GrowthModelEvidence (G : RamseyCassKoopmansPackage) where
  householdUtilityClosed : G.householdUtility
  firmProfitMaximizationClosed : G.firmProfitMaximization
  marketEquilibriumClosed : G.marketEquilibrium
  steadyStateExistenceClosed : G.steadyStateExistence
  saddlePathStabilityClosed : G.saddlePathStability

def GrowthModelClosed (G : RamseyCassKoopmansPackage) : Prop :=
  G.householdUtility ∧ G.firmProfitMaximization ∧ G.marketEquilibrium ∧
  G.steadyStateExistence ∧ G.saddlePathStability

theorem growth_model_closed_from_evidence (G : RamseyCassKoopmansPackage)
    (E : GrowthModelEvidence G) : GrowthModelClosed G := by
  exact And.intro E.householdUtilityClosed
    (And.intro E.firmProfitMaximizationClosed
      (And.intro E.marketEquilibriumClosed
        (And.intro E.steadyStateExistenceClosed E.saddlePathStabilityClosed)))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
