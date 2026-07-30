import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure InstrumentalVariablesPackage where
  endogenousRegressor : ℝ → ℝ
  instrument : ℝ → ℝ
  outcomeVariable : ℝ → ℝ
  orthogonalityCondition : Prop
  relevanceCondition : Prop
  estimatorConsistency : Prop

structure InstrumentalVariablesEvidence (I : InstrumentalVariablesPackage) where
  orthogonalityConditionClosed : I.orthogonalityCondition
  relevanceConditionClosed : I.relevanceCondition
  estimatorConsistencyClosed : I.estimatorConsistency

def InstrumentalVariablesClosed (I : InstrumentalVariablesPackage) : Prop :=
  I.orthogonalityCondition ∧ I.relevanceCondition ∧ I.estimatorConsistency

theorem instrumental_variables_closed_from_evidence (I : InstrumentalVariablesPackage)
    (Ev : InstrumentalVariablesEvidence I) : InstrumentalVariablesClosed I :=
  And.intro Ev.orthogonalityConditionClosed
    (And.intro Ev.relevanceConditionClosed Ev.estimatorConsistencyClosed)

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse