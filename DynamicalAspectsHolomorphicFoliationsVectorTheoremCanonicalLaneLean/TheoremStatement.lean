import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure HolomorphicFoliationAdmittedObject where
  space : Type
  topology : TopologicalSpace space
  complexStructure : Prop
  foliation : Prop
  leaf : space → Set space
  vectorField : Type
  dynamicalProperties : Prop
  conclusion : Prop

def HolomorphicFoliationWitnessClosed (O : HolomorphicFoliationAdmittedObject) : Prop :=
  O.conclusion

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse