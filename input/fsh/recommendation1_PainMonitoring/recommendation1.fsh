/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUPainMonitoring
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients: Pain Monitoring"
Description: "Recommendation for ICU Patients: Pain Monitoring"
* name = "Recommendation1-PainMonitoring"
* title = "Intervention for Population: ICU Patients - Pain Monitoring"
* version = "1.0"
* date = "2023-10-05"
* status = #active
* description = "In ICU Patients Pain should be monitored with a validated score at least once per shift"
* insert canonical-url(patients-icu-pain-monitoring, recommendation/patients-icu-pain-monitoring)
* experimental = true
//one action enough? or for each score an action needed? 
* action[+]
  * title = "Intervention_Plan_ICU_Patients_Pain_Monitoring"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: Pain Monitoring"
  * definitionCanonical = Canonical(InterventionPatientsICUPainMonitoring)
  * selectionBehavior = #at-most-one

