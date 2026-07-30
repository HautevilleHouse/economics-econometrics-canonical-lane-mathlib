import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure StructuralModel (θ : Type u) (Y : Type v) where
  parameterSpace : θ
  observableSpace : Y
  momentConditions : Prop
  identificationCondition : Prop
  consistentEstimator : Prop

structure IdentificationEvidence {θ : Type u} {Y : Type v}
    (M : StructuralModel θ Y) where
  identificationConditionClosed : M.identificationCondition
  consistentEstimatorClosed : M.consistentEstimator

def IdentificationClosed {θ : Type u} {Y : Type v}
    (M : StructuralModel θ Y) : Prop :=
  M.identificationCondition ∧ M.consistentEstimator

theorem identification_closed_from_evidence
    {θ : Type u} {Y : Type v} (M : StructuralModel θ Y)
    (Ev : IdentificationEvidence M) : IdentificationClosed M := by
  exact And.intro Ev.identificationConditionClosed Ev.consistentEstimatorClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse