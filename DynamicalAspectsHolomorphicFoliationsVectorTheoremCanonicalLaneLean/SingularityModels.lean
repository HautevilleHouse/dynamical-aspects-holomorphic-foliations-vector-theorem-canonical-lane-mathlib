import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.DynamicalSystemsPackage

/-! Singularity models for holomorphic foliations -/

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure SingularityModelPackage where
  singularSet : Type u
  singularityType : Prop
  localModel : Type v
  resolutionBlowup : Prop
  localModelClosed : localModel

def SingularityModelClosed (P : SingularityModelPackage) : Prop :=
  P.resolutionBlowup ∧ P.localModelClosed

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse