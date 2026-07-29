import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure IntegrabilityCriteriaPackage where
  foliationIntegrable : Prop
  vanishingCondition : Prop
  holonomyInvariant : Prop
  integrabilityCriteriaClosed : Prop

structure IntegrabilityCriteriaEvidence (I : IntegrabilityCriteriaPackage) where
  foliationIntegrableClosed : I.foliationIntegrable
  vanishingConditionClosed : I.vanishingCondition
  holonomyInvariantClosed : I.holonomyInvariant
  packageClosed : I.integrabilityCriteriaClosed

def IntegrabilityCriteriaClosed (I : IntegrabilityCriteriaPackage) : Prop :=
  I.foliationIntegrable ∧ I.vanishingCondition ∧ I.holonomyInvariant ∧ I.integrabilityCriteriaClosed

theorem integrability_criteria_closed_from_evidence (I : IntegrabilityCriteriaPackage) (E : IntegrabilityCriteriaEvidence I) :
    IntegrabilityCriteriaClosed I := by
  exact And.intro E.foliationIntegrableClosed (And.intro E.vanishingConditionClosed (And.intro E.holonomyInvariantClosed E.packageClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse