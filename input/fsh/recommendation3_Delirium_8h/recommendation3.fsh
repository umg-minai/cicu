/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUDeliriumMonitoring
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients: Delirium Monitoring"
Description: "Recommendation for ICU Patients: Delirium Monitoring"
* name = "Recommendation3-DeliriumMonitoring"
* title = "Intervention for Population: ICU Patients - Delirium Monitoring"
* version = "1.0"
* date = "2023-11-13"
* status = #active
* description = "In ICU Patients Findings ind Delirium Monitoring should be documented at least once per shift"
* insert canonical-url(patients-icu-delirium-monitoring, recommendation/patients-icu-delirium-monitoring)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_Delirium_Monitoring"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: Delirium Monitoring"
  * definitionCanonical = Canonical(InterventionPatientsICUDeliriumMonitoring)
  * selectionBehavior = #at-most-one
