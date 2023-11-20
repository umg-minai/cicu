/*********************/
/* Intervention Plan */
/*********************/
Instance: InterventionPatientsICUnoDeliriumGoal
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: no Delirium Goal"
Description: "ICU Patients should be delirium free"
* insert canonical-url(patients-icu-no-delirium-goal, intervention-plan/patients-icu-no-delirium)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_no_Delirium_Goal"
* title = "Intervention plan for ICU Patients: no Delirium Goal"
* identifier.value = "InterventionPlanforICUPAtientsnoDeliriumGoal"
* date = "2023-09"
* status = #active
* description = "Intensive care patients should be delirium free"
* subjectCanonical = Canonical(PopulationPatientsICUnoDeliriumGoal)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUnoDeliriumGoal)
* goal[assessmentScale][+]
  * id = "dlirium-management-goal"
  * description.text = "CAM-ICU should be negativ"
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * target
    * measure = $loinc#54627-5 "Signs and symptoms of delirium (from CAM) [CAM.MDSv3]" 
    * detailCodeableConcept = $sct#260385009 "Negative (qualifier value)"
* action[assessment][+]
  * definitionCanonical = Canonical (DeliriumMonitoringCAMICUnegative)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"

/**********************/
/* Recommended Actions */
/**********************/

Instance: DeliriumMonitoringCAMICUnegative
InstanceOf: assessment-action
Usage: #definition
Title: "Delirium Monitoring with CAMICU"
Description: "Delirium Monitoring in ICU Patients with CAMICU"
* insert canonical-url(patients-icu-no-delirium-goal, recommended-action/delirium-monitoring-CAMICU)
* insert publisher-experimental-version(1.0)
* name = "DeliriumMonitoringWithCAMICUPlan"
* status = #active
* description = "Delirium monitoring in ICU Patients with CAMIU"
* code = $loinc#54627-5 "Signs and symptoms of delirium (from CAM) [CAM.MDSv3]" 
