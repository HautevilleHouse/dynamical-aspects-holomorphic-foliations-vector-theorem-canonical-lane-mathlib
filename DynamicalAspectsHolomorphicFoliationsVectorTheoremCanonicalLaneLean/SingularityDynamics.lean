import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsVectorField

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure SingularityDynamicsPackage (V : HolomorphicFoliationsVectorField) where
  singularSet : Type u
  singularSetAnalytic : Prop
  localDynamics : Prop
  indexTheorem : Prop
  separatrices : Prop

structure SingularityDynamicsEvidence {V : HolomorphicFoliationsVectorField}
    (S : SingularityDynamicsPackage V) where
  singularSetAnalyticClosed : S.singularSetAnalytic
  localDynamicsClosed : S.localDynamics
  indexTheoremClosed : S.indexTheorem
  separatricesClosed : S.separatrices

def SingularityDynamicsClosed {V : HolomorphicFoliationsVectorField}
    (S : SingularityDynamicsPackage V) : Prop :=
  S.singularSetAnalytic ∧ S.localDynamics ∧ S.indexTheorem ∧ S.separatrices

theorem singularity_dynamics_closed_from_evidence
    {V : HolomorphicFoliationsVectorField} (S : SingularityDynamicsPackage V)
    (E : SingularityDynamicsEvidence S) : SingularityDynamicsClosed S := by
  exact And.intro E.singularSetAnalyticClosed
    (And.intro E.localDynamicsClosed
      (And.intro E.indexTheoremClosed E.separatricesClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse