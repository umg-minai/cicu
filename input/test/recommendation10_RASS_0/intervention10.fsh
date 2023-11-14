/*********************/
/* Intervention Plan */
/*********************/
Instance: InterventionPatientsICUwithRASSnot0
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients with RASS≠0"
Description: "In ICU Patients RASS should be 0 or 1"
* insert canonical-url(patients-icu-RASSnot0, intervention-plan/patients-icu-with-hrass-not-0)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_with_RASS≠0"
* title = "Intervention plan for ICU Patients with RASS≠0"
* identifier.value = "InterventionPlanforICUPAtientswithRASS≠0"
* date = "2023-09"
* status = #active
* description = "In intensive care patients RASS should be 0 or 1"
* subjectCanonical = Canonical(PopulationPatientsICUwithRASSnot0)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUwithRASSnot0)
//non-existant action. add? or try with procedure? 
* goal[assessmentScale][+]
  * id = "sedation-management-RASS-0-goal"
  * description.text = "RASS should be 0 or 1"
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * target
    * measure = $sct-us#457441000124102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 'score'
      * high = 0 'score'
* action[sedationManagement][+]
  * code = $sct#406187008 "Sedation management (procedure)"
  * goalId[+] = "sedation-management-RASS-0-goal"