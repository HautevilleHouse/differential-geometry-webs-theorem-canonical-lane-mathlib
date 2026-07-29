import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebStructureEquationsPackage where
  webManifoldType : Type u
  foliationDim1 : Nat
  foliationDim2 : Nat
  transverseDim : Nat
  webCoordinatesDefined : Prop
  rankCondition : Prop
  integrabilityCondition : Prop

structure WebStructureEquationsEvidence (W : WebStructureEquationsPackage) where
  webCoordinatesDefinedClosed : W.webCoordinatesDefined
  rankConditionClosed : W.rankCondition
  integrabilityConditionClosed : W.integrabilityCondition

def WebStructureEquationsClosed (W : WebStructureEquationsPackage) : Prop :=
  W.webCoordinatesDefined ∧ W.rankCondition ∧ W.integrabilityCondition

theorem web_structure_equations_closed_from_evidence
    (W : WebStructureEquationsPackage) (E : WebStructureEquationsEvidence W) :
    WebStructureEquationsClosed W := by
  exact And.intro E.webCoordinatesDefinedClosed
    (And.intro E.rankConditionClosed E.integrabilityConditionClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse