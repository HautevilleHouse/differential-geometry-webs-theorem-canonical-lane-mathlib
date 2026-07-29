import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure IndexTheoremPackage where
  webManifold : Type u
  ellipticComplex : Type v
  indexFormula : Prop
  topologicalInvariant : Prop
  analyticInvariant : Prop
  indexEquality : Prop

structure IndexTheoremEvidence (I : IndexTheoremPackage) where
  indexFormulaClosed : I.indexFormula
  topologicalInvariantClosed : I.topologicalInvariant
  analyticInvariantClosed : I.analyticInvariant
  indexEqualityClosed : I.indexEquality

def IndexTheoremClosed (I : IndexTheoremPackage) : Prop :=
  I.indexFormula ∧ I.topologicalInvariant ∧ I.analyticInvariant ∧ I.indexEquality

theorem index_theorem_closed_from_evidence
    (I : IndexTheoremPackage) (E : IndexTheoremEvidence I) :
    IndexTheoremClosed I := by
  exact And.intro E.indexFormulaClosed
    (And.intro E.topologicalInvariantClosed
      (And.intro E.analyticInvariantClosed E.indexEqualityClosed))

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse