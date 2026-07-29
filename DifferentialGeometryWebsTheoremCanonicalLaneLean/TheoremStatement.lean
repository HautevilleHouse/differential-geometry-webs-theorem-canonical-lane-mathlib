import HautevilleHouse.DifferentialGeometryWebsTheoremCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String
deriving Repr, DecidableEq

def sourceTheoremStatement : TheoremStatement := {
  sourceKey := "differential-geometry-webs-theorem-canonical-lane",
  theoremName := "Differential Geometry Webs Theorem",
  theoremObject := "WebsAdmittedObject",
  classicalBoundary := "webs boundary closure",
  manifoldConstrainedStatement := "manifold-constrained theorem certificate internalized through baseline gates, source constants, reviewer bridge, manifest hashes, and outside-constant dependency count",
  certificateLane := "manifold_constrained",
  carriedRemainder := "classical source boundary carried by formalizationCertificate.theoremBoundaryOpen and sourceTheoremBoundary"
}

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse