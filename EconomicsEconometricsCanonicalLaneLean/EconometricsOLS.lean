import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure OLSRegression where
  n : Nat
  predictors : ℝ ^ n
  response : ℝ ^ n
  coefficients : ℝ ^ n

def betaHat (regression : OLSRegression) : ℝ ^ regression.n :=
  (matrixTranspose regression.predictors * regression.predictors)⁻¹ * matrixTranspose regression.predictors * regression.response

theorem ols_estimator (regression : OLSRegression) : regression.coefficients = betaHat regression := by
  rfl

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse