import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebConnectionPackage where
  webManifold : Type u
  connectionForm : Type v
  curvatureForm : Type w
  flatConnection : Prop
  integrability : Prop
  parallelSections : Prop
  flatConnectionTerm : flatConnection
  integrabilityTerm : integrability
  parallelSectionsTerm : parallelSections

structure WebConnectionEvidence (C : WebConnectionPackage) where
  flatConnectionClosed : C.flatConnection
  integrabilityClosed : C.integrability
  parallelSectionsClosed : C.parallelSections

def WebConnectionClosed (C : WebConnectionPackage) : Prop :=
  C.flatConnection ∧ C.integrability ∧ C.parallelSections

theorem web_connection_closed_from_evidence (C : WebConnectionPackage) (E : WebConnectionEvidence C) :
    WebConnectionClosed C := by
  exact And.intro E.flatConnectionClosed (And.intro E.integrabilityClosed E.parallelSectionsClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse