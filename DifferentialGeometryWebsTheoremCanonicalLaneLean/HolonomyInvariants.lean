import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure HolonomyInvariantsPackage where
  webManifold : Type u
  holonomyGroup : Type v
  monodromyRepresentation : Type w
  abelianCondition : Prop
  discreteCondition : Prop
  infinitesimalHolonomy : Prop

structure HolonomyInvariantsEvidence (H : HolonomyInvariantsPackage) where
  abelianConditionClosed : H.abelianCondition
  discreteConditionClosed : H.discreteCondition
  infinitesimalHolonomyClosed : H.infinitesimalHolonomy

def HolonomyInvariantsClosed (H : HolonomyInvariantsPackage) : Prop :=
  H.abelianCondition ∧ H.discreteCondition ∧ H.infinitesimalHolonomy

theorem holonomy_invariants_closed_from_evidence
    (H : HolonomyInvariantsPackage) (E : HolonomyInvariantsEvidence H) :
    HolonomyInvariantsClosed H := by
  exact And.intro E.abelianConditionClosed
    (And.intro E.discreteConditionClosed E.infinitesimalHolonomyClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse