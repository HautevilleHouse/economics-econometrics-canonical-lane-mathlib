import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure UtilityTheoryPackage where
  preferenceRelation : Type u
  utilityFunction : Type v
  vnmAxioms : Prop
  expectedUtilityRepresentation : Prop
  riskAversion : Prop
  certaintyEquivalent : Prop

structure UtilityTheoryEvidence (U : UtilityTheoryPackage) where
  vnmAxiomsClosed : U.vnmAxioms
  expectedUtilityRepresentationClosed : U.expectedUtilityRepresentation
  riskAversionClosed : U.riskAversion
  certaintyEquivalentClosed : U.certaintyEquivalent

def UtilityTheoryClosed (U : UtilityTheoryPackage) : Prop :=
  U.vnmAxioms ∧ U.expectedUtilityRepresentation ∧
  U.riskAversion ∧ U.certaintyEquivalent

theorem utility_theory_closed_from_evidence (U : UtilityTheoryPackage) (E : UtilityTheoryEvidence U) :
    UtilityTheoryClosed U := by
  exact And.intro E.vnmAxiomsClosed
    (And.intro E.expectedUtilityRepresentationClosed
      (And.intro E.riskAversionClosed E.certaintyEquivalentClosed))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
