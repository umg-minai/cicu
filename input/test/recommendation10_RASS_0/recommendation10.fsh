/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUwithRASSnot0
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients with RASS≠0"
Description: "Recommendation for ICU Patients with RASS≠0"
* name = "Recommendation10-RASS"
* title = "RASS Intervention for Population: ICU Patients with RASS≠0"
* version = "1.0"
* date = "2023-08-13"
* status = #active
* description = "RASS in ICU Patients should be 0 or 1"
* insert canonical-url(patients-icu-RASSnot0, recommendation/patients-icu-with-rass-not-0)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_with_RASS≠0"
  //not sure if right code
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients with RASS≠0"
  * definitionCanonical = Canonical(InterventionPatientsICUwithRASSnot0)
  * selectionBehavior = #exactly-one

