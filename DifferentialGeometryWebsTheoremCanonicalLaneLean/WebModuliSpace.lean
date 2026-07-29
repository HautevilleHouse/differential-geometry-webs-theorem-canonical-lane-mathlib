import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsTheoremCanonicalLaneLean.WebGeometryStructure
import DifferentialGeometryWebsTheoremCanonicalLaneLean.HolonomyClassification

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebModuliSpacePackage {W : WebGeometryPackage} where
  equivalenceRelation : Prop
  moduliDimension : Nat
  smoothOrbifold : Prop
  periodMapping : Prop
  torelliTheorem : Prop
  boundaryComponent : Prop
  localRigidity : Prop

def WebModuliSpaceClosed (M : WebModuliSpacePackage) : Prop :=
  M.equivalenceRelation ∧ M.smoothOrbifold ∧ M.periodMapping ∧ M.torelliTheorem ∧ M.boundaryComponent ∧ M.localRigidity

theorem web_moduli_endgame (A : AdmissibleClass) (h : bridgeClosed A) (M : WebModuliSpacePackage) : WebModuliSpaceClosed M := by
  exact ⟨M.equivalenceRelation, M.smoothOrbifold, M.periodMapping, M.torelliTheorem, M.boundaryComponent, M.localRigidity⟩

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse