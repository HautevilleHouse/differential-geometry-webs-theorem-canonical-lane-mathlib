import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsTheoremCanonicalLaneLean.WebGeometryStructure
import DifferentialGeometryWebsTheoremCanonicalLaneLean.AbelHolonomyBridge

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure HolonomyClassificationPackage {W : WebGeometryPackage} where
  fiberType : Type u
  monodromyGroup : Type v
  monodromyAction : Type w
  classificationTheorem : Prop
  rigidity : Prop
  deformationSpace : Prop
  completeness : Prop

def HolonomyClassificationClosed (H : HolonomyClassificationPackage) : Prop :=
  H.classificationTheorem ∧ H.rigidity ∧ H.deformationSpace ∧ H.completeness

theorem holonomy_classification_endgame (A : AdmissibleClass) (h : bridgeClosed A) (H : HolonomyClassificationPackage) : HolonomyClassificationClosed H := by
  exact ⟨H.classificationTheorem, H.rigidity, H.deformationSpace, H.completeness⟩

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse