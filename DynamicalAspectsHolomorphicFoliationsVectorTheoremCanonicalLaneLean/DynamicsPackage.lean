import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure DynamicalAspectsPackage where
  invariantMeasures : Prop
  ergodicComponents : Prop
  hyperbolicity : Prop
  leafRecurrence : Prop
  invariantMeasuresClosed : invariantMeasures
  ergodicComponentsClosed : ergodicComponents
  hyperbolicityClosed : hyperbolicity
  leafRecurrenceClosed : leafRecurrence

structure DynamicalAspectsEvidence (P : DynamicalAspectsPackage) where
  invariantMeasuresClosed : P.invariantMeasures
  ergodicComponentsClosed : P.ergodicComponents
  hyperbolicityClosed : P.hyperbolicity
  leafRecurrenceClosed : P.leafRecurrence

def DynamicalAspectsClosed (P : DynamicalAspectsPackage) : Prop :=
  P.invariantMeasures ∧ P.ergodicComponents ∧ P.hyperbolicity ∧ P.leafRecurrence

theorem dynamical_aspects_closed_from_evidence
    (P : DynamicalAspectsPackage) (E : DynamicalAspectsEvidence P) :
    DynamicalAspectsClosed P := by
  exact And.intro E.invariantMeasuresClosed
    (And.intro E.ergodicComponentsClosed
      (And.intro E.hyperbolicityClosed E.leafRecurrenceClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse