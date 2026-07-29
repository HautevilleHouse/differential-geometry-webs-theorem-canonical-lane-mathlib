import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebHolonomyPackage where
  baseManifold : Type u
  webType : Type v
  parallelTransport : Type w
  holonomyGroup : Prop
  monodromy : Prop
  braiding : Prop
  holonomyGroupTerm : holonomyGroup
  monodromyTerm : monodromy
  braidingTerm : braiding

structure WebHolonomyEvidence (H : WebHolonomyPackage) where
  holonomyGroupClosed : H.holonomyGroup
  monodromyClosed : H.monodromy
  braidingClosed : H.braiding

def WebHolonomyClosed (H : WebHolonomyPackage) : Prop :=
  H.holonomyGroup ∧ H.monodromy ∧ H.braiding

theorem web_holonomy_closed_from_evidence (H : WebHolonomyPackage) (E : WebHolonomyEvidence H) :
    WebHolonomyClosed H := by
  exact And.intro E.holonomyGroupClosed (And.intro E.monodromyClosed E.braidingClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse