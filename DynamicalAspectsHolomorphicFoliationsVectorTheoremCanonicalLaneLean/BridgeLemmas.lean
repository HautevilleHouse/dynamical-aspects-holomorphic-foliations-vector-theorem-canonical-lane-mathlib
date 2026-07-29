import canonicalLaneMathlib.AdmissibleClass
import DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  HVWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse
