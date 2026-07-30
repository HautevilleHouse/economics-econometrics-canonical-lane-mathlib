import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure WelfareTheoremsPackage where
  paretoOptimality : Prop
  competitiveEquilibrium : Prop
  convexityAssumptions : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop

structure WelfareTheoremsEvidence (W : WelfareTheoremsPackage) where
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem

def WelfareTheoremsClosed (W : WelfareTheoremsPackage) : Prop :=
  W.paretoOptimality ∧ W.competitiveEquilibrium ∧ W.convexityAssumptions ∧
  W.firstWelfareTheorem ∧ W.secondWelfareTheorem

theorem welfare_theorems_closed_from_evidence (W : WelfareTheoremsPackage)
    (E : WelfareTheoremsEvidence W) : WelfareTheoremsClosed W := by
  refine And.intro E.firstWelfareTheoremClosed ?_
  refine And.intro E.secondWelfareTheoremClosed ?_
  refine And.intro ?_ ?_
  · exact W.paretoOptimality
  · refine And.intro ?_ ?_
    · exact W.competitiveEquilibrium
    · exact W.convexityAssumptions

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse