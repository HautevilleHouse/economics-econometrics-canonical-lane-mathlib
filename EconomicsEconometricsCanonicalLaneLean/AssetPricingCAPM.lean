import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure CapitalAssetPricingPackage where
  riskFreeRate : ℝ
  marketReturn : ℝ
  assetBeta : ℝ
  expectedReturn : ℝ
  linearRelationship : Prop
  equilibriumCondition : Prop

structure CapitalAssetPricingEvidence (C : CapitalAssetPricingPackage) where
  linearRelationshipClosed : C.linearRelationship
  equilibriumConditionClosed : C.equilibriumCondition

def CapitalAssetPricingClosed (C : CapitalAssetPricingPackage) : Prop :=
  C.linearRelationship ∧ C.equilibriumCondition

theorem capital_asset_pricing_closed_from_evidence (C : CapitalAssetPricingPackage)
    (Ev : CapitalAssetPricingEvidence C) : CapitalAssetPricingClosed C :=
  And.intro Ev.linearRelationshipClosed Ev.equilibriumConditionClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse