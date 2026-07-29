import canonicalLaneMathlib.AdmissibleClass

/-!
# Web Structure Package
-/

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebStructurePackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  foliation : Type v
  transverseDistribution : Type w
  webDimension : Nat
  foliationSmooth : Prop
  transverseSmooth : Prop
  webDimensionCorrect : webDimension = 3

structure WebStructureEvidence (W : WebStructurePackage) where
  foliationSmoothClosed : W.foliationSmooth
  transverseSmoothClosed : W.transverseSmooth
  webDimensionCorrectClosed : W.webDimensionCorrect

def WebStructureClosed (W : WebStructurePackage) : Prop :=
  W.foliationSmooth ∧ W.transverseSmooth ∧ W.webDimensionCorrect

theorem web_structure_closed_from_evidence
    (W : WebStructurePackage) (E : WebStructureEvidence W) :
    WebStructureClosed W := by
  exact And.intro E.foliationSmoothClosed
    (And.intro E.transverseSmoothClosed E.webDimensionCorrectClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse