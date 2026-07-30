import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure NashEquilibriumPackage where
  playerSet : Type u
  strategySpace : Type v
  payoffFunctions : Prop
  bestResponseCorrespondence : Prop
  nashExistenceTheorem : Prop
  pureStrategyEquilibrium : Prop
  mixedStrategyEquilibrium : Prop
  paretoOptimality : Prop
  subgamePerfectEquilibrium : Prop

structure NashEquilibriumEvidence (N : NashEquilibriumPackage) where
  playerSetClosed : Nonempty N.playerSet
  strategySpaceClosed : Nonempty N.strategySpace
  payoffFunctionsClosed : N.payoffFunctions
  bestResponseCorrespondenceClosed : N.bestResponseCorrespondence
  nashExistenceTheoremClosed : N.nashExistenceTheorem
  pureStrategyEquilibriumClosed : N.pureStrategyEquilibrium
  mixedStrategyEquilibriumClosed : N.mixedStrategyEquilibrium
  paretoOptimalityClosed : N.paretoOptimality
  subgamePerfectEquilibriumClosed : N.subgamePerfectEquilibrium

def NashEquilibriumClosed (N : NashEquilibriumPackage) : Prop :=
  Nonempty N.playerSet ∧ Nonempty N.strategySpace ∧
  N.payoffFunctions ∧ N.bestResponseCorrespondence ∧
  N.nashExistenceTheorem ∧ N.pureStrategyEquilibrium ∧
  N.mixedStrategyEquilibrium ∧ N.paretoOptimality ∧
  N.subgamePerfectEquilibrium

theorem nash_equilibrium_closed_from_evidence (N : NashEquilibriumPackage) (E : NashEquilibriumEvidence N) :
    NashEquilibriumClosed N := by
  exact And.intro E.playerSetClosed
    (And.intro E.strategySpaceClosed
      (And.intro E.payoffFunctionsClosed
        (And.intro E.bestResponseCorrespondenceClosed
          (And.intro E.nashExistenceTheoremClosed
            (And.intro E.pureStrategyEquilibriumClosed
              (And.intro E.mixedStrategyEquilibriumClosed
                (And.intro E.paretoOptimalityClosed E.subgamePerfectEquilibriumClosed)))))))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
