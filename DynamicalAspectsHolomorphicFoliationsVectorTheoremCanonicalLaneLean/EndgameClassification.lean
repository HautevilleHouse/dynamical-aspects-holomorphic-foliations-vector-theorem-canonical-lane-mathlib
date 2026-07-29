import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.DynamicalEntanglement

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure EndgameClassificationPackage (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    (P : DynamicalEntanglementPackage M V) where
  baseManifold : Type
  baseTopology : TopologicalSpace baseManifold
  complexFoliation : ℕ
  vectorTheoremConjectureStatement : Prop
  proofStrategy : Prop
  conclusionMatchesVectorTheorem : Prop

struct EndgameClassificationEvidence (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    {P : DynamicalEntanglementPackage M V} (C : EndgameClassificationPackage M P) where
  vectorTheoremConjectureStatementClosed : C.vectorTheoremConjectureStatement
  proofStrategyClosed : C.proofStrategy
  conclusionMatchesVectorTheoremClosed : C.conclusionMatchesVectorTheorem

def EndgameClassificationClosed (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    {P : DynamicalEntanglementPackage M V} (C : EndgameClassificationPackage M P) : Prop :=
  C.vectorTheoremConjectureStatement ∧ C.proofStrategy ∧ C.conclusionMatchesVectorTheorem

theorem endgame_classification_closed_from_evidence (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    {P : DynamicalEntanglementPackage M V} (C : EndgameClassificationPackage M P)
    (E : EndgameClassificationEvidence M C) : EndgameClassificationClosed M C := by
  exact And.intro E.vectorTheoremConjectureStatementClosed (And.intro E.proofStrategyClosed E.conclusionMatchesVectorTheoremClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse
