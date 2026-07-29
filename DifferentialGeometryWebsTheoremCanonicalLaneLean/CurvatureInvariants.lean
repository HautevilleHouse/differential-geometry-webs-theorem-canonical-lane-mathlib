import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure CurvatureInvariantsPackage where
  webManifold : Type u
  connectionForm : Type v
  curvatureForm : Type w
  webBianchiIdentities : Prop
  firstStructuralInvariantDefined : Prop
  secondStructuralInvariantDefined : Prop
  gaussCodazziEquations : Prop

structure CurvatureInvariantsEvidence (C : CurvatureInvariantsPackage) where
  webBianchiIdentitiesClosed : C.webBianchiIdentities
  firstStructuralInvariantDefinedClosed : C.firstStructuralInvariantDefined
  secondStructuralInvariantDefinedClosed : C.secondStructuralInvariantDefined
  gaussCodazziEquationsClosed : C.gaussCodazziEquations

def CurvatureInvariantsClosed (C : CurvatureInvariantsPackage) : Prop :=
  C.webBianchiIdentities ∧ C.firstStructuralInvariantDefined ∧
  C.secondStructuralInvariantDefined ∧ C.gaussCodazziEquations

theorem curvature_invariants_closed_from_evidence
    (C : CurvatureInvariantsPackage) (E : CurvatureInvariantsEvidence C) :
    CurvatureInvariantsClosed C := by
  exact And.intro E.webBianchiIdentitiesClosed
    (And.intro E.firstStructuralInvariantDefinedClosed
      (And.intro E.secondStructuralInvariantDefinedClosed E.gaussCodazziEquationsClosed))

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse