import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure PreferenceRelation (A : Type) where
  relation : A -> A -> Prop
  completeness : ∀ x y : A, relation x y ∨ relation y x
  transitivity : ∀ x y z : A, relation x y → relation y z → relation x z

structure UtilityFunction (A : Type) where
  toFun : A -> ℝ
  preserves : PreferenceRelation A
  continuous : TopologicalSpace A → Prop

theorem expected_utility_representation (pref : PreferenceRelation ℝ) : UtilityFunction ℝ := by
  -- placeholder: von Neumann-Morgenstern theorem
  sorry

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse