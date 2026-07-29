import canonicalLaneMathlib.AdmissibleClass
import DifferentialGeometryWebsTheoremCanonicalLaneLean.WebConnectionStructure
import DifferentialGeometryWebsTheoremCanonicalLaneLean.AbelTransformation

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WebConnectionClosed (A.object)

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.conclusion

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

def ConstrainedWebTheoremClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_web_theorem_endgame (A : AdmissibleClass) :
    ConstrainedWebTheoremClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse