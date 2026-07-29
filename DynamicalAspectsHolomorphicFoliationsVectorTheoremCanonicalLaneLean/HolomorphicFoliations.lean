import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationsPackage where
  foliatedManifold : Type u
  topology : TopologicalSpace foliatedManifold
  complexStructure : Prop
  foliationSingularity : Prop
  leafDecomposition : Prop
  holonomyGroupoid : Prop
  dynamicalInvariant : Prop

structure HolomorphicFoliationsEvidence (F : HolomorphicFoliationsPackage) where
  complexStructureClosed : F.complexStructure
  foliationSingularityClosed : F.foliationSingularity
  leafDecompositionClosed : F.leafDecomposition
  holonomyGroupoidClosed : F.holonomyGroupoid
  dynamicalInvariantClosed : F.dynamicalInvariant

def HolomorphicFoliationsClosed (F : HolomorphicFoliationsPackage) : Prop :=
  F.complexStructure ∧ F.foliationSingularity ∧ F.leafDecomposition ∧
  F.holonomyGroupoid ∧ F.dynamicalInvariant

theorem holomorphic_foliations_closed_from_evidence (F : HolomorphicFoliationsPackage)
    (E : HolomorphicFoliationsEvidence F) : HolomorphicFoliationsClosed F :=
  And.intro E.complexStructureClosed
    (And.intro E.foliationSingularityClosed
      (And.intro E.leafDecompositionClosed
        (And.intro E.holonomyGroupoidClosed E.dynamicalInvariantClosed)))

end HautevilleHouse
end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean