import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.equilibriumExist ∨ A.welfareOptimal

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse