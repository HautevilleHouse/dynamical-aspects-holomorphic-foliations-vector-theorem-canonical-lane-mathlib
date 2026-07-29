import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationsPackage where
  complexManifold : Type u
  topology : TopologicalSpace complexManifold
  holomorphicStructure : Prop
  foliation : Type v
  leaves : complexManifold → Set complexManifold
  foliationSmooth : Prop
  leafImmersed : Prop
  holomorphicFoliationsPackageClosed : Prop

structure HolomorphicFoliationsEvidence (P : HolomorphicFoliationsPackage) where
  holomorphicStructureClosed : P.holomorphicStructure
  foliationSmoothClosed : P.foliationSmooth
  leafImmersedClosed : P.leafImmersed
  packageClosed : P.holomorphicFoliationsPackageClosed

def HolomorphicFoliationsClosed (P : HolomorphicFoliationsPackage) : Prop :=
  P.holomorphicStructure ∧ P.foliationSmooth ∧ P.leafImmersed ∧ P.holomorphicFoliationsPackageClosed

theorem holomorphic_foliations_closed_from_evidence (P : HolomorphicFoliationsPackage) (E : HolomorphicFoliationsEvidence P) :
    HolomorphicFoliationsClosed P := by
  exact And.intro E.holomorphicStructureClosed (And.intro E.foliationSmoothClosed (And.intro E.leafImmersedClosed E.packageClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse