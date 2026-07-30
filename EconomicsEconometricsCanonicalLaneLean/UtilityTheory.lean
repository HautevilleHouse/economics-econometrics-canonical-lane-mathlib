import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EconomicsEconometricsCanonicalLaneLean

structure PreferenceRelation (X : Type u) where
  relation : X → X → Prop
  completeness : Prop
  transitivity : Prop

def UtilityFunction (X : Type u) (⪰ : PreferenceRelation X) : Type v :=
  { f : X → ℝ // ∀ x y, ⪰.relation x y ↔ f x ≥ f y }

structure UtilityRepresentation (X : Type u) (⪰ : PreferenceRelation X) where
  utility : UtilityFunction X ⪰
  representationClosed : Prop

structure UtilityRepresentationEvidence {X : Type u}
    {⪰ : PreferenceRelation X} (U : UtilityRepresentation X ⪰) where
  representationClosedClosed : U.representationClosed

def UtilityRepresentationClosed {X : Type u}
    {⪰ : PreferenceRelation X} (U : UtilityRepresentation X ⪰) : Prop :=
  U.representationClosed

theorem utility_representation_closed_from_evidence
    {X : Type u} {⪰ : PreferenceRelation X}
    (U : UtilityRepresentation X ⪰) (Ev : UtilityRepresentationEvidence U) :
    UtilityRepresentationClosed U := by
  exact Ev.representationClosedClosed

end EconomicsEconometricsCanonicalLaneLean
end HautevilleHouse