import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationsPackage where
  leafComplexStructure : Prop
  holonomyGroupoid : Prop
  transverseStructure : Prop
  leafSpaceCompactness : Prop
  leafSpaceCompactnessClosed : leafSpaceCompactness
  holonomyGroupoidClosed : holonomyGroupoid
  transverseStructureClosed : transverseStructure
  leafComplexStructureClosed : leafComplexStructure

structure HolomorphicFoliationsEvidence (P : HolomorphicFoliationsPackage) where
  leafComplexStructureClosed : P.leafComplexStructure
  holonomyGroupoidClosed : P.holonomyGroupoid
  transverseStructureClosed : P.transverseStructure
  leafSpaceCompactnessClosed : P.leafSpaceCompactness

def HolomorphicFoliationsClosed (P : HolomorphicFoliationsPackage) : Prop :=
  P.leafComplexStructure ∧ P.holonomyGroupoid ∧ P.transverseStructure ∧ P.leafSpaceCompactness

theorem holomorphic_foliations_closed_from_evidence
    (P : HolomorphicFoliationsPackage) (E : HolomorphicFoliationsEvidence P) :
    HolomorphicFoliationsClosed P := by
  exact And.intro E.leafComplexStructureClosed
    (And.intro E.holonomyGroupoidClosed
      (And.intro E.transverseStructureClosed E.leafSpaceCompactnessClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse