/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUSedationMonitoring
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: Sedation Monitoring"
Description: "ICU Patients: Sedation Monitoring"
* insert canonical-url(patients-icu-sedation-monitoring, intervention-plan/patients-icu-sedation-monitoring)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_Sedation_Monitoring"
* title = "Intervention plan for ICU Patients: Sedation Monitoring"
* identifier.value = "InterventionPlanforICUPatientsSedationMonitoring"
* date = "2023-10"
* status = #active
* description = "In intensive care patients sedation goal and sedation degree should be monitored at least 1 time per shift "
* subjectCanonical = Canonical(PopulationPatientsICUSedationMonitoring)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUSedationMonitoring)
* action[assessment][+]
  * definitionCanonical = Canonical (SedationMonitoringRASS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"

/**********************/
/* Recommended Actions */
/**********************/
Instance: SedationMonitoringRASS
InstanceOf: assessment-action
Usage: #definition
Title: "Sedation Monitoring with RASS"
Description: "Sedation Monitoring in ICU Patients with RASS"
* insert canonical-url(patients-icu-sedation-monitoring, recommended-action/sedation-monitoring-RASS)
* insert publisher-experimental-version(1.0)
* name = "SedationMonitoringWithRASSPlan"
* status = #active
* description = "Sedation monitoring in ICU Patients with RASS"
* code = $sct-us#457441000124102 "Richmond agitation-sedation scale"
* timingTiming.code = #Q8H

