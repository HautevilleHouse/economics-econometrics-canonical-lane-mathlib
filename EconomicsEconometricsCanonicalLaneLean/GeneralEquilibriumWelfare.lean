import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure GeneralEquilibriumWelfarePackage where
  equilibrium : ArrowDebreuEquilibriumPackage
  paretoOptimality : Prop
  firstWelfareTheorem : Prop
  secondWelfareTheorem : Prop
  equityCondition : Prop

structure GeneralEquilibriumWelfareEvidence (W : GeneralEquilibriumWelfarePackage) where
  firstWelfareTheoremClosed : W.firstWelfareTheorem
  secondWelfareTheoremClosed : W.secondWelfareTheorem

def GeneralEquilibriumWelfareClosed (W : GeneralEquilibriumWelfarePackage) : Prop :=
  W.firstWelfareTheorem ∧ W.secondWelfareTheorem

theorem general_equilibrium_welfare_closed_from_evidence
    (W : GeneralEquilibriumWelfarePackage) (Ev : GeneralEquilibriumWelfareEvidence W) :
    GeneralEquilibriumWelfareClosed W :=
  And.intro Ev.firstWelfareTheoremClosed Ev.secondWelfareTheoremClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse