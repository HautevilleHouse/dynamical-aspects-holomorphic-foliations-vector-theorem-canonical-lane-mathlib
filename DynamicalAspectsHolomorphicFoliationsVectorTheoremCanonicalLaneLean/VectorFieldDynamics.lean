import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure VectorFieldDynamicsPackage where
  holomorphicVectorField : Type u
  flow : Type v
  singularSet : Set (HolomorphicFoliationsPackage.complexManifold)
  dynamicProperties : Prop
  orbits : Prop
  invariantSets : Prop
  vectorFieldDynamicsClosed : Prop

structure VectorFieldDynamicsEvidence (V : VectorFieldDynamicsPackage) where
  dynamicPropertiesClosed : V.dynamicProperties
  orbitsClosed : V.orbits
  invariantSetsClosed : V.invariantSets
  packageClosed : V.vectorFieldDynamicsClosed

def VectorFieldDynamicsClosed (V : VectorFieldDynamicsPackage) : Prop :=
  V.dynamicProperties ∧ V.orbits ∧ V.invariantSets ∧ V.vectorFieldDynamicsClosed

theorem vector_field_dynamics_closed_from_evidence (V : VectorFieldDynamicsPackage) (E : VectorFieldDynamicsEvidence V) :
    VectorFieldDynamicsClosed V := by
  exact And.intro E.dynamicPropertiesClosed (And.intro E.orbitsClosed (And.intro E.invariantSetsClosed E.packageClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse