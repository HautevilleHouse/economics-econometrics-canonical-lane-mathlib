import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure NashEquilibrium where
  players : Type u
  strategySpaces : Prop
  payoffFunctions : Prop
  bestResponse : Prop
  equilibrium : Prop
  existenceTheorem : Prop

structure NashEquilibriumEvidence (N : NashEquilibrium) where
  playersClosed : N.players
  strategySpacesClosed : N.strategySpaces
  payoffFunctionsClosed : N.payoffFunctions
  bestResponseClosed : N.bestResponse
  equilibriumClosed : N.equilibrium
  existenceTheoremClosed : N.existenceTheorem

def NashEquilibriumClosed (N : NashEquilibrium) : Prop :=
  N.players ∧ N.strategySpaces ∧ N.payoffFunctions ∧ N.bestResponse ∧ N.equilibrium ∧ N.existenceTheorem

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibrium) (Ev : NashEquilibriumEvidence N) : NashEquilibriumClosed N := by
  exact And.intro Ev.playersClosed (And.intro Ev.strategySpacesClosed (And.intro Ev.payoffFunctionsClosed (And.intro Ev.bestResponseClosed (And.intro Ev.equilibriumClosed Ev.existenceTheoremClosed))))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
