import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure AdmissibleClass where
  object : EconomicAdmittedObject
  equilibriumExist : Prop
  welfareOptimal : Prop
  gateWitness : equilibriumExist ∨ welfareOptimal

def admittedClosure (A : AdmissibleClass) : Prop :=
  EconomicWitnessClosed A.object ∧ (A.equilibriumExist ∨ A.welfareOptimal)

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse