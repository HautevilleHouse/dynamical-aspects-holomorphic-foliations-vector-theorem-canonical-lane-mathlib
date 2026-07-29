import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure SaddleReductionPackage where
  saddleSet : Type u
  reductionMap : Type v
  saddleRemoval : Prop
  topologicalConjugacy : Prop
  saddleReductionClosed : Prop

structure SaddleReductionEvidence (S : SaddleReductionPackage) where
  saddleRemovalClosed : S.saddleRemoval
  topologicalConjugacyClosed : S.topologicalConjugacy
  packageClosed : S.saddleReductionClosed

def SaddleReductionClosed (S : SaddleReductionPackage) : Prop :=
  S.saddleRemoval ∧ S.topologicalConjugacy ∧ S.saddleReductionClosed

theorem saddle_reduction_closed_from_evidence (S : SaddleReductionPackage) (E : SaddleReductionEvidence S) :
    SaddleReductionClosed S := by
  exact And.intro E.saddleRemovalClosed (And.intro E.topologicalConjugacyClosed E.packageClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse