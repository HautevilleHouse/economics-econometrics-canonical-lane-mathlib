import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure UtilityFunction where
  consumptionSet : Type u
  utilityMapping : consumptionSet → ℝ
  completeness : Prop
  transitivity : Prop
  continuity : Prop
  localNonSatiation : Prop
  strictMonotonicity : Prop
  strictConcavity : Prop

def utilityFunctionBridgeClosed (U : UtilityFunction) : Prop :=
  U.completeness ∧ U.transitivity ∧ U.continuity ∧ U.localNonSatiation ∧ U.strictMonotonicity ∧ U.strictConcavity

structure UtilityBridgeEvidence (U : UtilityFunction) where
  completenessClosed : U.completeness
  transitivityClosed : U.transitivity
  continuityClosed : U.continuity
  localNonSatiationClosed : U.localNonSatiation
  strictMonotonicityClosed : U.strictMonotonicity
  strictConcavityClosed : U.strictConcavity

theorem utility_bridge_closed_from_evidence (U : UtilityFunction) (E : UtilityBridgeEvidence U) :
    utilityFunctionBridgeClosed U := by
  exact And.intro E.completenessClosed (And.intro E.transitivityClosed (And.intro E.continuityClosed (And.intro E.localNonSatiationClosed (And.intro E.strictMonotonicityClosed E.strictConcavityClosed))))

def bridgeClosed (A : AdmissibleClass) : Prop :=
  utilityFunctionBridgeClosed (by
    have : UtilityFunction := {
      consumptionSet := A.consumptionSet
      utilityMapping := A.utilityMapping
      completeness := A.completeness
      transitivity := A.transitivity
      continuity := A.continuity
      localNonSatiation := A.localNonSatiation
      strictMonotonicity := A.strictMonotonicity
      strictConcavity := A.strictConcavity
    }
    exact this)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  unfold bridgeClosed
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))))
  · exact A.completeness
  · exact A.transitivity
  · exact A.continuity
  · exact A.localNonSatiation
  · exact A.strictMonotonicity
  · exact A.strictConcavity

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse