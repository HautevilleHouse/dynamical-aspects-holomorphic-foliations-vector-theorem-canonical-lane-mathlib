import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsVectorField

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure LeafCohomologyPackage (V : HolomorphicFoliationsVectorField) where
  leafSpace : Type u
  cohomologyGroups : Type v
  leafCohomologyComputed : Prop
  monodromy : Prop
  variationOfHodgeStructure : Prop

structure LeafCohomologyEvidence {V : HolomorphicFoliationsVectorField}
    (L : LeafCohomologyPackage V) where
  leafCohomologyComputedClosed : L.leafCohomologyComputed
  monodromyClosed : L.monodromy
  variationOfHodgeStructureClosed : L.variationOfHodgeStructure

def LeafCohomologyClosed {V : HolomorphicFoliationsVectorField}
    (L : LeafCohomologyPackage V) : Prop :=
  L.leafCohomologyComputed ∧ L.monodromy ∧ L.variationOfHodgeStructure

theorem leaf_cohomology_closed_from_evidence
    {V : HolomorphicFoliationsVectorField} (L : LeafCohomologyPackage V)
    (E : LeafCohomologyEvidence L) : LeafCohomologyClosed L := by
  exact And.intro E.leafCohomologyComputedClosed
    (And.intro E.monodromyClosed E.variationOfHodgeStructureClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse