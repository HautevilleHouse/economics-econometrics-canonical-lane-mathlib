import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure ArrowDebreuEquilibrium where
  consumers : Type u
  firms : Type v
  commoditySpace : Type w
  endowments : Prop
  preferences : Prop
  productionSets : Prop
  priceVector : Prop
  marketClearing : Prop
  equilibriumExists : Prop

structure GeneralEquilibriumEvidence (E : ArrowDebreuEquilibrium) where
  endowmentsClosed : E.endowments
  preferencesClosed : E.preferences
  productionSetsClosed : E.productionSets
  priceVectorClosed : E.priceVector
  marketClearingClosed : E.marketClearing
  equilibriumExistsClosed : E.equilibriumExists

def GeneralEquilibriumClosed (E : ArrowDebreuEquilibrium) : Prop :=
  E.endowments ∧ E.preferences ∧ E.productionSets ∧ E.priceVector ∧ E.marketClearing ∧ E.equilibriumExists

theorem general_equilibrium_closed_from_evidence (E : ArrowDebreuEquilibrium) (Ev : GeneralEquilibriumEvidence E) : GeneralEquilibriumClosed E := by
  exact And.intro Ev.endowmentsClosed (And.intro Ev.preferencesClosed (And.intro Ev.productionSetsClosed (And.intro Ev.priceVectorClosed (And.intro Ev.marketClearingClosed Ev.equilibriumExistsClosed))))

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse
