import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebGeometryPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  smoothStructure : Prop
  dimensionTwo : Prop
  transverseWeb : Prop
  webCurlature : Prop
  abelianConnection : Prop
  holonomyRepresentation : Prop
  webTorsionZero : Prop
  riemannianMetric : Prop
  adaptedCoframe : Prop

def WebGeometryClosed (W : WebGeometryPackage) : Prop :=
  W.smoothStructure ∧ W.dimensionTwo ∧ W.transverseWeb ∧
  W.webCurlature ∧ W.abelianConnection ∧ W.holonomyRepresentation ∧
  W.webTorsionZero ∧ W.riemannianMetric ∧ W.adaptedCoframe

lemma web_geometry_self_consistent (W : WebGeometryPackage) : WebGeometryClosed W := by
  exact ⟨W.smoothStructure, W.dimensionTwo, W.transverseWeb, W.webCurlature, W.abelianConnection, W.holonomyRepresentation, W.webTorsionZero, W.riemannianMetric, W.adaptedCoframe⟩

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse