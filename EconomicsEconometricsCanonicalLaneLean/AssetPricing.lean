import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure LucasAssetPricingPackage where
  endowmentProcess : Type u
  representativeAgentPreferences : Prop
  equilibriumPriceFunction : Type v
  stochasticDiscountFactor : Type w
  noArbitrageCondition : Prop
  eulerEquationSolved : Prop

structure AssetPricingEvidence (A : LucasAssetPricingPackage) where
  representativeAgentPreferencesClosed : A.representativeAgentPreferences
  noArbitrageConditionClosed : A.noArbitrageCondition
  eulerEquationSolvedClosed : A.eulerEquationSolved

def AssetPricingClosed (A : LucasAssetPricingPackage) : Prop :=
  A.representativeAgentPreferences ∧ A.noArbitrageCondition ∧ A.eulerEquationSolved

theorem asset_pricing_closed_from_evidence (A : LucasAssetPricingPackage)
    (E : AssetPricingEvidence A) : AssetPricingClosed A := by
  exact And.intro E.representativeAgentPreferencesClosed
    (And.intro E.noArbitrageConditionClosed E.eulerEquationSolvedClosed)

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
