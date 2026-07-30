import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure GrowthModelPackage where
  productionFunction : Prop
  capitalAccumulation : Prop
  consumptionPath : Prop
  steadyStateExistence : Prop
  saddlePathStability : Prop
  goldenRuleCapital : Prop
  initialCondition : Prop

structure GrowthModelEvidence (G : GrowthModelPackage) where
  productionFunctionClosed : G.productionFunction
  capitalAccumulationClosed : G.capitalAccumulation
  consumptionPathClosed : G.consumptionPath
  steadyStateExistenceClosed : G.steadyStateExistence
  saddlePathStabilityClosed : G.saddlePathStability
  goldenRuleCapitalClosed : G.goldenRuleCapital
  initialConditionClosed : G.initialCondition

def GrowthModelClosed (G : GrowthModelPackage) : Prop :=
  G.productionFunction ∧ G.capitalAccumulation ∧
  G.consumptionPath ∧ G.steadyStateExistence ∧
  G.saddlePathStability ∧ G.goldenRuleCapital ∧
  G.initialCondition

theorem growth_model_closed_from_evidence (G : GrowthModelPackage) (E : GrowthModelEvidence G) :
    GrowthModelClosed G := by
  exact And.intro E.productionFunctionClosed
    (And.intro E.capitalAccumulationClosed
      (And.intro E.consumptionPathClosed
        (And.intro E.steadyStateExistenceClosed
          (And.intro E.saddlePathStabilityClosed
            (And.intro E.goldenRuleCapitalClosed E.initialConditionClosed)))))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
