import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure FinitenessTheoremPackage where
  finiteSingularities : Prop
  finiteLeaves : Prop
  finiteSaddles : Prop
  finitenessTheoremClosed : Prop

structure FinitenessTheoremEvidence (F : FinitenessTheoremPackage) where
  finiteSingularitiesClosed : F.finiteSingularities
  finiteLeavesClosed : F.finiteLeaves
  finiteSaddlesClosed : F.finiteSaddles
  packageClosed : F.finitenessTheoremClosed

def FinitenessTheoremClosed (F : FinitenessTheoremPackage) : Prop :=
  F.finiteSingularities ∧ F.finiteLeaves ∧ F.finiteSaddles ∧ F.finitenessTheoremClosed

theorem finiteness_theorem_closed_from_evidence (F : FinitenessTheoremPackage) (E : FinitenessTheoremEvidence F) :
    FinitenessTheoremClosed F := by
  exact And.intro E.finiteSingularitiesClosed (And.intro E.finiteLeavesClosed (And.intro E.finiteSaddlesClosed E.packageClosed))

end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean
end HautevilleHouse