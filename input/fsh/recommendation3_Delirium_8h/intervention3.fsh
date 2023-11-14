/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUDeliriumMonitoring
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: Delirium Monitoring"
Description: "ICU Patients: Delirium Monitoring"
* insert canonical-url(patients-icu-delirium-monitoring, intervention-plan/patients-icu-delirium-monitoring)
* insert publisher-experimental-version(1.0)
* name = "Intervention_Plan_ICU_Patients_Delirium_Monitoring"
* title = "Intervention plan for ICU Patients: Delirium Monitoring with NuDESC or CAMICU"
* identifier.value = "InterventionPlanforICUPatientsDeliriumMonitoring"
* date = "2023-10"
* status = #active
* description = "In ICU Patients Findings ind Delirium Monitoring should be documented at least once per shift"
* subjectCanonical = Canonical(PopulationPatientsICUDeliriumMonitoring)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUDeliriumMonitoring)
* action[assessment][+]
  * definitionCanonical = Canonical (DeliriumMonitoringCAMICU)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"
* action[assessment][+]
  * definitionCanonical = Canonical (DeliriumMonitoringNuDESC)
  * selectionBehavior = #one-or-more
  * code = $sct#386053000 "Evaluation procedure (procedure)"

/**********************/
/* Recommended Actions */
/**********************/
Instance: DeliriumMonitoringCAMICU
InstanceOf: assessment-action
Usage: #definition
Title: "Delirium Monitoring with CAMICU"
Description: "Delirium Monitoring in ICU Patients with RASS"
* insert canonical-url(patients-icu-delirium-monitoring, recommended-action/delirium-monitoring-CAMICU)
* insert publisher-experimental-version(1.0)
* name = "DeliriumMonitoringWithCAMICUPlan"
* status = #active
* description = "Delirium monitoring in ICU Patients with Confusion Assessment Method for Intensive Care Unit (CAMICU)"
* code = $loinc#85649-2 "LCDS v3.00 - Signs and Symptoms of Delirium (from CAM) [CMS Assessment]"
* timingTiming.code = #Q8H

Instance: DeliriumMonitoringNuDESC
InstanceOf: assessment-action
Usage: #definition
Title: "Delirium Monitoring with NuDESC"
Description: "Delirium Monitoring in ICU Patients with NuDESC"
* insert canonical-url(patients-icu-delirium-monitoring, recommended-action/delirium-monitoring-NuDesc)
* insert publisher-experimental-version(1.0)
* name = "DeliriumMonitoringWithNuDESCPlan"
* status = #active
* description = "Delirium monitoring in ICU Patients with NuDESC"
* code = $cs-celida#nudesc "Nursing Delirium Screening Scale (Nu-DESC)"
* timingTiming.code = #Q8H