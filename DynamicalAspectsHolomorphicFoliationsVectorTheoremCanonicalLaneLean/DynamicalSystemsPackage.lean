import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsPDE

/-! Dynamical systems package for holomorphic foliations -/

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure LeafDecompositionPackage where
  leafType : Type u
  leafTopology : TopologicalSpace leafType
  leafDynamics : leafType → leafType → Prop
  dynamicalSystemWellDefined : Prop

def LeafDecompositionClosed (P : LeafDecompositionPackage) : Prop :=
  P.dynamicalSystemWellDefined

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse