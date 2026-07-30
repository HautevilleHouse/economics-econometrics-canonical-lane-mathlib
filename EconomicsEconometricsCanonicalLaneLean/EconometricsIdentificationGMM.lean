import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure GMMPackage where
  momentConditions : Prop
  parameterSpace : Type u
  sampleData : Type v
  orthogonalityConditions : Prop
  identificationCondition : Prop
  consistencyProof : Prop
  asymptoticNormality : Prop
  overidentificationTest : Prop

structure GMMEvidence (G : GMMPackage) where
  momentConditionsClosed : G.momentConditions
  orthogonalityConditionsClosed : G.orthogonalityConditions
  identificationConditionClosed : G.identificationCondition
  consistencyProofClosed : G.consistencyProof
  asymptoticNormalityClosed : G.asymptoticNormality
  overidentificationTestClosed : G.overidentificationTest

def GMMClosed (G : GMMPackage) : Prop :=
  G.momentConditions ∧ G.orthogonalityConditions ∧
  G.identificationCondition ∧ G.consistencyProof ∧
  G.asymptoticNormality ∧ G.overidentificationTest

theorem gmm_closed_from_evidence (G : GMMPackage) (E : GMMEvidence G) :
    GMMClosed G := by
  exact And.intro E.momentConditionsClosed
    (And.intro E.orthogonalityConditionsClosed
      (And.intro E.identificationConditionClosed
        (And.intro E.consistencyProofClosed
          (And.intro E.asymptoticNormalityClosed E.overidentificationTestClosed))))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
