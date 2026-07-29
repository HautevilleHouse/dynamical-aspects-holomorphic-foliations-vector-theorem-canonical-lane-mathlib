import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsVectorField

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure UniformizationProjectiveStructurePackage (V : HolomorphicFoliationsVectorField) where
  projectiveStructure : Type u
  uniformizationMap : Prop
  developingMap : Prop
  holonomyRepresentation : Prop

structure UniformizationProjectiveStructureEvidence {V : HolomorphicFoliationsVectorField}
    (U : UniformizationProjectiveStructurePackage V) where
  uniformizationMapClosed : U.uniformizationMap
  developingMapClosed : U.developingMap
  holonomyRepresentationClosed : U.holonomyRepresentation

def UniformizationProjectiveStructureClosed {V : HolomorphicFoliationsVectorField}
    (U : UniformizationProjectiveStructurePackage V) : Prop :=
  U.uniformizationMap ∧ U.developingMap ∧ U.holonomyRepresentation

theorem uniformization_projective_structure_closed_from_evidence
    {V : HolomorphicFoliationsVectorField} (U : UniformizationProjectiveStructurePackage V)
    (E : UniformizationProjectiveStructureEvidence U) : UniformizationProjectiveStructureClosed U := by
  exact And.intro E.uniformizationMapClosed
    (And.intro E.developingMapClosed E.holonomyRepresentationClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse