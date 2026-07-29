import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebIndexPackage where
  webBundle : Type u
  ellipticComplex : Type v
  indexForm : Type w
  indexTheorem : Prop
  topologicalInvariance : Prop
  analyticLocalization : Prop
  indexTheoremTerm : indexTheorem
  topologicalInvarianceTerm : topologicalInvariance
  analyticLocalizationTerm : analyticLocalization

structure WebIndexEvidence (I : WebIndexPackage) where
  indexTheoremClosed : I.indexTheorem
  topologicalInvarianceClosed : I.topologicalInvariance
  analyticLocalizationClosed : I.analyticLocalization

def WebIndexClosed (I : WebIndexPackage) : Prop :=
  I.indexTheorem ∧ I.topologicalInvariance ∧ I.analyticLocalization

theorem web_index_closed_from_evidence (I : WebIndexPackage) (E : WebIndexEvidence I) :
    WebIndexClosed I := by
  exact And.intro E.indexTheoremClosed (And.intro E.topologicalInvarianceClosed E.analyticLocalizationClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse