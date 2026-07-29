import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebConnectionTheoryPackage where
  webManifold : Type u
  adaptedConnection : Type v
  torsionTensor : Type w
  curvatureTensor : Type x
  connectionCompatibleWithFoliation : Prop
  torsionVanishing : Prop
  curvatureSymmetries : Prop

structure WebConnectionTheoryEvidence (C : WebConnectionTheoryPackage) where
  connectionCompatibleWithFoliationClosed : C.connectionCompatibleWithFoliation
  torsionVanishingClosed : C.torsionVanishing
  curvatureSymmetriesClosed : C.curvatureSymmetries

def WebConnectionTheoryClosed (C : WebConnectionTheoryPackage) : Prop :=
  C.connectionCompatibleWithFoliation ∧ C.torsionVanishing ∧ C.curvatureSymmetries

theorem web_connection_theory_closed_from_evidence
    (C : WebConnectionTheoryPackage) (E : WebConnectionTheoryEvidence C) :
    WebConnectionTheoryClosed C := by
  exact And.intro E.connectionCompatibleWithFoliationClosed
    (And.intro E.torsionVanishingClosed E.curvatureSymmetriesClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse