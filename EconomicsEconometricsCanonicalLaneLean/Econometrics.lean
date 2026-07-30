import canonicalLaneMathlib.AdmissibleClass

/-!
# Econometrics Package: Linear Regression and Instrumental Variables
-/

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure EconometricModel (n : ℕ) where
  dependentVariable : ℝ^n
  independentVariables : ℝ^n × ℝ^n
  coefficients : ℝ^n
  errorTerm : ℝ^n
  olsEstimator : ℝ^n
  gaussMarkovAssumptions : Prop
  unbiasedness : Prop
  consistency : Prop

structure InstrumentalVariableModel (n : ℕ) (E : EconometricModel n) where
  instruments : ℝ^n × ℝ^n
  firstStage : ℝ^n × ℝ^n
  secondStage : ℝ^n × ℝ^n
  ivEstimator : ℝ^n
  rankCondition : Prop
  exclusionCondition : Prop

def OLSClosed (n : ℕ) (E : EconometricModel n) : Prop :=
  E.gaussMarkovAssumptions ∧ E.unbiasedness ∧ E.consistency

theorem ols_closed_from_assumptions (n : ℕ) (E : EconometricModel n)
    (hGauss : E.gaussMarkovAssumptions) (hUnbiased : E.unbiasedness)
    (hConsistent : E.consistency) : OLSClosed n E := by
  exact And.intro hGauss (And.intro hUnbiased hConsistent)

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse