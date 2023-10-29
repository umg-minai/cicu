/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUSedationMonitoring
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients: Sedation Monitoring"
Description: "Recommendation for ICU Patients: Sedation Monitoring"
* name = "Recommendation1-SedationMonitoring"
* title = "Intervention for Population: ICU Patients - Sedation Monitoring"
* version = "1.0"
* date = "2023-10-05"
* status = #active
* description = "In ICU Patients Sedation Goal and Degree should be monitored with a validated score at least once per shift"
* insert canonical-url(patients-icu-sedation-monitoring, recommendation/patients-icu-sedation-monitoring)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_Sedation_Monitoring"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: Sedation Monitoring"
  * definitionCanonical = Canonical(InterventionPatientsICUSedationMonitoring)
  * selectionBehavior = #at-most-one
