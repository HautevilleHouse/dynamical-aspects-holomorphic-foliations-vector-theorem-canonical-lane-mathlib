import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure CanonicalFormsPackage where
  normalForm : Prop
  linearizationResult : Prop
  resonanceCondition : Prop
  formalConjugacy : Prop

structure CanonicalFormsEvidence (C : CanonicalFormsPackage) where
  normalFormClosed : C.normalForm
  linearizationResultClosed : C.linearizationResult
  resonanceConditionClosed : C.resonanceCondition
  formalConjugacyClosed : C.formalConjugacy

def CanonicalFormsClosed (C : CanonicalFormsPackage) : Prop :=
  C.normalForm ∧ C.linearizationResult ∧ C.resonanceCondition ∧ C.formalConjugacy

theorem canonical_forms_closed_from_evidence (C : CanonicalFormsPackage)
    (E : CanonicalFormsEvidence C) : CanonicalFormsClosed C :=
  And.intro E.normalFormClosed
    (And.intro E.linearizationResultClosed
      (And.intro E.resonanceConditionClosed E.formalConjugacyClosed))

end HautevilleHouse
end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean