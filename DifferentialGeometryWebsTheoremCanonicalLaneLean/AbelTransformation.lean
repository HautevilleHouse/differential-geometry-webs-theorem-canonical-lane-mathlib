import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DifferentialGeometryWebsTheoremCanonicalLaneLean

structure AbelTransformationPackage {W : WebConnectionPackage} where
  webDifferentialOperator : Type u
  firstFundamentalForm : Type v
  secondFundamentalForm : Type w
  abelTransformationMaps : Prop
  orthogonalityCondition : Prop
  parallelWebCurvature : Prop
  abelTransformationMapsClosed : abelTransformationMaps
  orthogonalityConditionClosed : orthogonalityCondition
  parallelWebCurvatureClosed : parallelWebCurvature

def AbelTransformationClosed {W : WebConnectionPackage} (A : AbelTransformationPackage W) : Prop :=
  A.abelTransformationMaps ∧ A.orthogonalityCondition ∧ A.parallelWebCurvature

theorem abel_transformation_closed_from_evidence {W : WebConnectionPackage} (A : AbelTransformationPackage W)
    (orthogonality_evidence : A.orthogonalityCondition) (parallel_evidence : A.parallelWebCurvature) :
    AbelTransformationClosed A := by
  exact And.intro A.abelTransformationMapsClosed (And.intro orthogonality_evidence parallel_evidence)

end DifferentialGeometryWebsTheoremCanonicalLaneLean
end HautevilleHouse