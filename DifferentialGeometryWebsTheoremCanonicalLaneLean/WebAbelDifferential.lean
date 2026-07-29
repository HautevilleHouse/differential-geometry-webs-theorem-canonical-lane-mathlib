import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebAbelDifferentialPackage where
  abelianVariety : Type u
  webStructure : Type v
  differentialForm : Type w
  closedCondition : Prop
  periodRelation : Prop
  riemannConditions : Prop
  closedConditionTerm : closedCondition
  periodRelationTerm : periodRelation
  riemannConditionsTerm : riemannConditions

structure WebAbelDifferentialEvidence (A : WebAbelDifferentialPackage) where
  closedConditionClosed : A.closedCondition
  periodRelationClosed : A.periodRelation
  riemannConditionsClosed : A.riemannConditions

def WebAbelDifferentialClosed (A : WebAbelDifferentialPackage) : Prop :=
  A.closedCondition ∧ A.periodRelation ∧ A.riemannConditions

theorem web_abel_differential_closed_from_evidence (A : WebAbelDifferentialPackage) (E : WebAbelDifferentialEvidence A) :
    WebAbelDifferentialClosed A := by
  exact And.intro E.closedConditionClosed (And.intro E.periodRelationClosed E.riemannConditionsClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse