import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure ExpectedUtilityPackage where
  outcomeSet : Type u
  lotterySpace : outcomeSet → ℝ
  preferenceRelation : (outcomeSet → ℝ) → (outcomeSet → ℝ) → Prop
  utilityFunction : outcomeSet → ℝ
  expectedUtility : (outcomeSet → ℝ) → ℝ
  representationTheorem : Prop

structure ExpectedUtilityEvidence (U : ExpectedUtilityPackage) where
  representationTheoremClosed : U.representationTheorem

def ExpectedUtilityClosed (U : ExpectedUtilityPackage) : Prop :=
  U.representationTheorem

theorem expected_utility_closed_from_evidence (U : ExpectedUtilityPackage)
    (Ev : ExpectedUtilityEvidence U) : ExpectedUtilityClosed U :=
  Ev.representationTheoremClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse