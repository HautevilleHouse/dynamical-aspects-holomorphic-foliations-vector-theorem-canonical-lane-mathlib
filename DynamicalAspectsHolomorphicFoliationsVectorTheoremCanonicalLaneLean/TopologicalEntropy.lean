import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure TopologicalEntropyPackage where
  entropyValue : ℝ
  positivityCondition : Prop
  entropyBounds : Prop
  topologicalEntropyClosed : Prop

structure TopologicalEntropyEvidence (E : TopologicalEntropyPackage) where
  positivityConditionClosed : E.positivityCondition
  entropyBoundsClosed : E.entropyBounds
  packageClosed : E.topologicalEntropyClosed

def TopologicalEntropyClosed (E : TopologicalEntropyPackage) : Prop :=
  E.positivityCondition ∧ E.entropyBounds ∧ E.topologicalEntropyClosed

theorem topological_entropy_closed_from_evidence (E : TopologicalEntropyPackage) (Ev : TopologicalEntropyEvidence E) :
    TopologicalEntropyClosed E := by
  exact And.intro Ev.positivityConditionClosed (And.intro Ev.entropyBoundsClosed Ev.packageClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse