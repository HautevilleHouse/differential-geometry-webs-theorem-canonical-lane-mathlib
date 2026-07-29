import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebConnectionPackage where
  webManifold : Type u
  webDistribution : Type v
  webRank : Nat
  webConnection : Type w
  integrabilityCondition : Prop
  infinitesimalInvariant : Prop
  curvatureTensor : Type x
  webCurvatureClosed : Prop

structure WebConnectionEvidence (W : WebConnectionPackage) where
  webRankPositive : W.webRank > 0
  integrabilityConditionClosed : W.integrabilityCondition
  infinitesimalInvariantClosed : W.infinitesimalInvariant
  webCurvatureClosedFromEvidence : W.webCurvatureClosed

def WebConnectionClosed (W : WebConnectionPackage) : Prop :=
  W.integrabilityCondition ∧ W.infinitesimalInvariant ∧ W.webCurvatureClosed

theorem web_connection_closed_from_evidence (W : WebConnectionPackage) (E : WebConnectionEvidence W) :
    WebConnectionClosed W := by
  exact And.intro E.integrabilityConditionClosed (And.intro E.infinitesimalInvariantClosed E.webCurvatureClosedFromEvidence)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse