import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationsVectorField where
  manifold : Type u
  topology : TopologicalSpace manifold
  complexStructure : Prop
  foliation : Type v
  foliationSmooth : Prop
  vectorField : Type w
  vectorFieldHolomorphic : Prop
  foliationInvariant : Prop

structure HolomorphicFoliationsVectorFieldEvidence (V : HolomorphicFoliationsVectorField) where
  complexStructureClosed : V.complexStructure
  foliationSmoothClosed : V.foliationSmooth
  vectorFieldHolomorphicClosed : V.vectorFieldHolomorphic
  foliationInvariantClosed : V.foliationInvariant

def HolomorphicFoliationsVectorFieldClosed (V : HolomorphicFoliationsVectorField) : Prop :=
  V.complexStructure ∧ V.foliationSmooth ∧ V.vectorFieldHolomorphic ∧ V.foliationInvariant

theorem holomorphic_foliations_vector_field_closed_from_evidence
    (V : HolomorphicFoliationsVectorField) (E : HolomorphicFoliationsVectorFieldEvidence V) :
    HolomorphicFoliationsVectorFieldClosed V := by
  exact And.intro E.complexStructureClosed
    (And.intro E.foliationSmoothClosed
      (And.intro E.vectorFieldHolomorphicClosed E.foliationInvariantClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse