import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure LeafStabilityPackage where
  leafCompactness : Prop
  leafUniformStability : Prop
  leafRecurrence : Prop
  leafStabilityClosed : Prop

structure LeafStabilityEvidence (L : LeafStabilityPackage) where
  leafCompactnessClosed : L.leafCompactness
  leafUniformStabilityClosed : L.leafUniformStability
  leafRecurrenceClosed : L.leafRecurrence
  packageClosed : L.leafStabilityClosed

def LeafStabilityClosed (L : LeafStabilityPackage) : Prop :=
  L.leafCompactness ∧ L.leafUniformStability ∧ L.leafRecurrence ∧ L.leafStabilityClosed

theorem leaf_stability_closed_from_evidence (L : LeafStabilityPackage) (E : LeafStabilityEvidence L) :
    LeafStabilityClosed L := by
  exact And.intro E.leafCompactnessClosed (And.intro E.leafUniformStabilityClosed (And.intro E.leafRecurrenceClosed E.packageClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse