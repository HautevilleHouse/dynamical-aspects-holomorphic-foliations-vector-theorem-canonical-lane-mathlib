import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicVectorFieldsPackage where
  vectorFieldDefined : Prop
  singularitySet : Prop
  leafTangentMap : Prop
  flowBoxExistence : Prop
  vectorFieldDefinedClosed : vectorFieldDefined
  singularitySetClosed : singularitySet
  leafTangentMapClosed : leafTangentMap
  flowBoxExistenceClosed : flowBoxExistence

structure HolomorphicVectorFieldsEvidence (P : HolomorphicVectorFieldsPackage) where
  vectorFieldDefinedClosed : P.vectorFieldDefined
  singularitySetClosed : P.singularitySet
  leafTangentMapClosed : P.leafTangentMap
  flowBoxExistenceClosed : P.flowBoxExistence

def HolomorphicVectorFieldsClosed (P : HolomorphicVectorFieldsPackage) : Prop :=
  P.vectorFieldDefined ∧ P.singularitySet ∧ P.leafTangentMap ∧ P.flowBoxExistence

theorem holomorphic_vector_fields_closed_from_evidence
    (P : HolomorphicVectorFieldsPackage) (E : HolomorphicVectorFieldsEvidence P) :
    HolomorphicVectorFieldsClosed P := by
  exact And.intro E.vectorFieldDefinedClosed
    (And.intro E.singularitySetClosed
      (And.intro E.leafTangentMapClosed E.flowBoxExistenceClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse