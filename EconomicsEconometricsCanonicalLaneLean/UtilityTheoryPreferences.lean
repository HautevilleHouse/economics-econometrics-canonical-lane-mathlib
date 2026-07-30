import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure UtilityPreferencesPackage where
  commoditySpace : Type u
  consumptionSet : Set commoditySpace
  preferenceRelation : commoditySpace → commoditySpace → Prop
  completeness : ∀ x y, x ∈ consumptionSet → y ∈ consumptionSet → (preferenceRelation x y ∨ preferenceRelation y x)
  transitivity : ∀ x y z, preferenceRelation x y → preferenceRelation y z → preferenceRelation x z
  continuity : Prop
  monotonicity : Prop
  convexity : Prop

structure UtilityPreferencesEvidence (U : UtilityPreferencesPackage) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  monotonicityClosed : U.monotonicity
  convexityClosed : U.convexity

def UtilityPreferencesClosed (U : UtilityPreferencesPackage) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.monotonicity ∧ U.convexity

theorem utility_preferences_closed_from_evidence (U : UtilityPreferencesPackage)
    (E : UtilityPreferencesEvidence U) : UtilityPreferencesClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed
    (And.intro E.continuityClosed (And.intro E.monotonicityClosed E.convexityClosed)))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
