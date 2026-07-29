import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.FoliationsVectorFields

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure DynamicalEntanglementPackage (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} (V : HolomorphicVectorFieldsPackage M F) where
  orbits : Prop
  limitSets : Prop
  entanglementIndex : Prop
  attractorRepellerPairs : Prop

struct DynamicalEntanglementEvidence (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    (P : DynamicalEntanglementPackage M V) where
  orbitsClosed : P.orbits
  limitSetsClosed : P.limitSets
  entanglementIndexClosed : P.entanglementIndex
  attractorRepellerPairsClosed : P.attractorRepellerPairs

def DynamicalEntanglementClosed (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    (P : DynamicalEntanglementPackage M V) : Prop :=
  P.orbits ∧ P.limitSets ∧ P.entanglementIndex ∧ P.attractorRepellerPairs

theorem dynamical_entanglement_closed_from_evidence (M : Type) [TopologicalSpace M] [ComplexManifold M]
    {F : HolomorphicFoliation M} {V : HolomorphicVectorFieldsPackage M F}
    (P : DynamicalEntanglementPackage M V) (E : DynamicalEntanglementEvidence M P) :
    DynamicalEntanglementClosed M P := by
  exact And.intro E.orbitsClosed (And.intro E.limitSetsClosed (And.intro E.entanglementIndexClosed E.attractorRepellerPairsClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse
