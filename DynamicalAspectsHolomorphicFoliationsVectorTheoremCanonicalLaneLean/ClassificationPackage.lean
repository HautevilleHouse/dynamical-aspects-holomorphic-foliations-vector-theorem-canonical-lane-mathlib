import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure ClassificationPackage where
  leafType : Prop
  singularityClassification : Prop
  transverseInvariant : Prop
  leafTypeClosed : leafType
  singularityClassificationClosed : singularityClassification
  transverseInvariantClosed : transverseInvariant

structure ClassificationEvidence (P : ClassificationPackage) where
  leafTypeClosed : P.leafType
  singularityClassificationClosed : P.singularityClassification
  transverseInvariantClosed : P.transverseInvariant

def ClassificationClosed (P : ClassificationPackage) : Prop :=
  P.leafType ∧ P.singularityClassification ∧ P.transverseInvariant

theorem classification_closed_from_evidence
    (P : ClassificationPackage) (E : ClassificationEvidence P) :
    ClassificationClosed P := by
  exact And.intro E.leafTypeClosed
    (And.intro E.singularityClassificationClosed E.transverseInvariantClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse