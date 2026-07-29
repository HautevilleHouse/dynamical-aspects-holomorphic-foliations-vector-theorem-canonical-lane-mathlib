import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse
