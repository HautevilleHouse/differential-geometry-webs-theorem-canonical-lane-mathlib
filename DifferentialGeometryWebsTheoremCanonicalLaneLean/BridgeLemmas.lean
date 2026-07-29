import DifferentialGeometryWebsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WebWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse