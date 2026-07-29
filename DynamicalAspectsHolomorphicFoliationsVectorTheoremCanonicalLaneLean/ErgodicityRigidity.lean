import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean.HolomorphicFoliationsVectorField

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure ErgodicityRigidityPackage (V : HolomorphicFoliationsVectorField) where
  invariantMeasures : Type u
  ergodicity : Prop
  rigidity : Prop
  lyapunovExponents : Prop

structure ErgodicityRigidityEvidence {V : HolomorphicFoliationsVectorField}
    (E : ErgodicityRigidityPackage V) where
  ergodicityClosed : E.ergodicity
  rigidityClosed : E.rigidity
  lyapunovExponentsClosed : E.lyapunovExponents

def ErgodicityRigidityClosed {V : HolomorphicFoliationsVectorField}
    (E : ErgodicityRigidityPackage V) : Prop :=
  E.ergodicity ∧ E.rigidity ∧ E.lyapunovExponents

theorem ergodicity_rigidity_closed_from_evidence
    {V : HolomorphicFoliationsVectorField} (E : ErgodicityRigidityPackage V)
    (Ev : ErgodicityRigidityEvidence E) : ErgodicityRigidityClosed E := by
  exact And.intro Ev.ergodicityClosed
    (And.intro Ev.rigidityClosed Ev.lyapunovExponentsClosed)

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse