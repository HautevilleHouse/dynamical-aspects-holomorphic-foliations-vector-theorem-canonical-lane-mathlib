import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean

structure VectorFieldsPackage where
  vectorFieldFamily : Type u
  holomorphicDependence : Prop
  singularPoints : Prop
  foliationByTrajectories : Prop
  invariantMeasures : Prop

structure VectorFieldsEvidence (V : VectorFieldsPackage) where
  holomorphicDependenceClosed : V.holomorphicDependence
  singularPointsClosed : V.singularPoints
  foliationByTrajectoriesClosed : V.foliationByTrajectories
  invariantMeasuresClosed : V.invariantMeasures

def VectorFieldsClosed (V : VectorFieldsPackage) : Prop :=
  V.holomorphicDependence ∧ V.singularPoints ∧
  V.foliationByTrajectories ∧ V.invariantMeasures

theorem vector_fields_closed_from_evidence (V : VectorFieldsPackage)
    (E : VectorFieldsEvidence V) : VectorFieldsClosed V :=
  And.intro E.holomorphicDependenceClosed
    (And.intro E.singularPointsClosed
      (And.intro E.foliationByTrajectoriesClosed E.invariantMeasuresClosed))

end HautevilleHouse
end DynamicalAspectsHolomorphicFoliationsVectorTheoremCanonicalLaneLean