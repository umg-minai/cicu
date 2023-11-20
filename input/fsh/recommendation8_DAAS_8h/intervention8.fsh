/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUDAASMonitoring
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: DAAS Monitoring"
Description: "ICU Patients: DAAS Monitoring"
* insert canonical-url(patients-icu-daas-monitoring, intervention-plan/patients-icu-daas-monitoring)
* insert publisher-experimental-version(1.0)
* name = "Intervention_Plan_ICU_Patients_DAAS_Monitoring"
* title = "Intervention plan for ICU Patients: DAAS Monitoring with NuDESC or CAMICU"
* identifier.value = "InterventionPlanforICUPatientsDAASMonitoring"
* date = "2023-10"
* status = #active
* description = "In ICU Patients Findings ind DAAS Monitoring should be documented at least once per shift"
* subjectCanonical = Canonical(PopulationPatientsICUDAASMonitoring)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUDAASMonitoring)
* action[assessment][+]
  * definitionCanonical = Canonical (DeliriumMonitoringCAMICU)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (DeliriumMonitoringNuDESC)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (SedationMonitoringRASS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringNRS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringVAS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringVRS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringFPS-R)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringBPS)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (PainMonitoringCPOT)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (AnxietyMonitoringSTAI)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"


/**********************/
/* Recommended Actions */
/**********************/

Instance: AnxietyMonitoringSTAI
InstanceOf: assessment-action
Usage: #definition
Title: "Anxiety Monitoring with STAI"
Description: "Anxiety Monitoring in ICU Patients with STAI"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/anxiety-monitoring-NuDesc)
* insert publisher-experimental-version(1.0)
* name = "AnxietyMonitoringWithSTAIPlan"
* status = #active
* description = "Anxiety monitoring in ICU Patients with STAI"
* code = $sct#273830002 "Spielberger state-trait anxiety inventory (assessment scale)"
* timingTiming.code = $cs-gts-abbreviation#Q8H
