/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUDAASMonitoring
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients: DAAS Monitoring"
Description: "Recommendation for ICU Patients: Delir, Anxiety, Analgesia, Sedation Monitoring"
* name = "Recommendation8-DAASMonitoring"
* title = "Intervention for Population: ICU Patients - DAAS Monitoring"
* version = "1.0"
* date = "2023-11"
* status = #active
* description = "The treatment goal and the current level of analgesia, sedation, anxiety, and delirium should be standardizedly documented at least once per shift (typically every 8 hours)"
* insert canonical-url(patients-icu-daas-monitoring, recommendation/patients-icu-daas-monitoring)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_DAAS_Monitoring"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: DAAS Monitoring"
  * definitionCanonical = Canonical(InterventionPatientsICUDAASMonitoring)
  * selectionBehavior = #all
