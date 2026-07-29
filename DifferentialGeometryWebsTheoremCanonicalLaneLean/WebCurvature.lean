import DifferentialGeometryWebsTheoremCanonicalLaneLean.WebConnection

/-!
# Web Curvature Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebCurvaturePackage {W : WebStructurePackage}
    {C : WebConnectionPackage W} where
  webRiemannTensor : Type u
  webRicciTensor : Type v
  webScalarCurvature : Type w
  webRiemannSymmetries : Prop
  webRicciContractedFromRiemann : Prop
  webScalarTraceOfRicci : Prop

structure WebCurvatureEvidence {W : WebStructurePackage}
    {C : WebConnectionPackage W} (K : WebCurvaturePackage C) where
  webRiemannSymmetriesClosed : K.webRiemannSymmetries
  webRicciContractedFromRiemannClosed : K.webRicciContractedFromRiemann
  webScalarTraceOfRicciClosed : K.webScalarTraceOfRicci

def WebCurvatureClosed {W : WebStructurePackage}
    {C : WebConnectionPackage W} (K : WebCurvaturePackage C) : Prop :=
  K.webRiemannSymmetries ∧ K.webRicciContractedFromRiemann ∧ K.webScalarTraceOfRicci

theorem web_curvature_closed_from_evidence
    {W : WebStructurePackage} {C : WebConnectionPackage W}
    (K : WebCurvaturePackage C) (E : WebCurvatureEvidence K) :
    WebCurvatureClosed K := by
  exact And.intro E.webRiemannSymmetriesClosed
    (And.intro E.webRicciContractedFromRiemannClosed E.webScalarTraceOfRicciClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse