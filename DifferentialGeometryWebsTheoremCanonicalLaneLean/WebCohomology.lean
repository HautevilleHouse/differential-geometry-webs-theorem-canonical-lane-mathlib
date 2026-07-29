import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure WebCohomologyPackage where
  webComplex : Type u
  cohomologyGroups : Type v
  hypercohomology : Type w
  exactness : Prop
  degeneration : Prop
  poincareDuality : Prop
  exactnessTerm : exactness
  degenerationTerm : degeneration
  poincareDualityTerm : poincareDuality

structure WebCohomologyEvidence (H : WebCohomologyPackage) where
  exactnessClosed : H.exactness
  degenerationClosed : H.degeneration
  poincareDualityClosed : H.poincareDuality

def WebCohomologyClosed (H : WebCohomologyPackage) : Prop :=
  H.exactness ∧ H.degeneration ∧ H.poincareDuality

theorem web_cohomology_closed_from_evidence (H : WebCohomologyPackage) (E : WebCohomologyEvidence H) :
    WebCohomologyClosed H := by
  exact And.intro E.exactnessClosed (And.intro E.degenerationClosed E.poincareDualityClosed)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse