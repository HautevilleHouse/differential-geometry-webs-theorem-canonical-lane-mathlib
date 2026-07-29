import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebCurvaturePackage where
  webType : Type u
  connection : Type v
  curvature : Type w
  webStructure : Prop
  connectionFlat : Prop
  curvatureVanishes : Prop
  webStructureTerm : webStructure
  connectionFlatTerm : connectionFlat
  curvatureVanishesTerm : curvatureVanishes

structure WebCurvatureEvidence (W : WebCurvaturePackage) where
  webStructureClosed : W.webStructure
  connectionFlatClosed : W.connectionFlat
  curvatureVanishesClosed : W.curvatureVanishes

def WebCurvatureClosed (W : WebCurvaturePackage) : Prop :=
  W.webStructure ∧ W.connectionFlat ∧ W.curvatureVanishes

theorem web_curvature_closed_from_evidence (W : WebCurvaturePackage) (E : WebCurvatureEvidence W) :
    WebCurvatureClosed W := by
  exact And.intro E.webStructureClosed (And.intro E.connectionFlatClosed E.curvatureVanishesClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse