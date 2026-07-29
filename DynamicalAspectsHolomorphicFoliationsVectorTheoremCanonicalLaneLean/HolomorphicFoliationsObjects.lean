import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure FoliationsSpace where
  carrier : Type
  complexTopology : TopologicalSpace carrier
  complexStructure : ComplexStructure carrier
  foliation : Foliation carrier

structure AdmittedHolomorphicFoliationsObject where
  space : FoliationsSpace
  closedFoliations : Prop
  holomorphicIntegrability : Prop
  vectorTheoremModel : Type
  modelTopology : TopologicalSpace vectorTheoremModel
  biholomorphicToModel : Prop
  conclusion : biholomorphicToModel

def HolomorphicFoliationsWitnessClosed (O : AdmittedHolomorphicFoliationsObject) : Prop :=
  O.biholomorphicToModel

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse