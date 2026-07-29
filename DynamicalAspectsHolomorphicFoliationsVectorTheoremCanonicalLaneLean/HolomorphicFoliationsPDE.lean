import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsObjects

/-! PDE framework for holomorphic foliations -/

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationsPDEPackage where
  complexManifold : Type u
  foliation : Foliation complexManifold
  leafwisePDE : Type v
  leafwiseHyperbolicFlow : Prop
  leafwiseEvolution : Prop

def HolomorphicFoliationsPDEClosed (P : HolomorphicFoliationsPDEPackage) : Prop :=
  P.leafwiseHyperbolicFlow ∧ P.leafwiseEvolution

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse