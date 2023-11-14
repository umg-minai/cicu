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
* timingTiming.code = #Q8H

/*
Instance: PainMonitoringNRS
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with NRS"
Description: "Pain Monitoring in ICU Patients with NRS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-NRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithNRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with NRS"
* code = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" 
* timingTiming.code = #Q8H

Instance: PainMonitoringVAS
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with VAS"
Description: "Pain Monitoring in ICU Patients with VAS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-VAS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithVASPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with VAS"
* code = $loinc#38214-3 "Pain severity [Score] Visual analog score"
* timingTiming.code = #Q8H

Instance: PainMonitoringVRS
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with VRS"
Description: "Pain Monitoring in ICU Patients with VRS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-VRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithVRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with VRS"
* code = $loinc#54834-7 "Rate pain severity during assessment period using verbal descriptor scale"
* timingTiming.code = #Q8H

Instance: PainMonitoringFPS-R
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with FPS-R"
Description: "Pain Monitoring in ICU Patients with FPS-R"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-FPS-R)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithFPS-RPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with FPS-R"
* code = $loinc#57696-7 "Pain severity FPS-R"
* timingTiming.code = #Q8H

Instance: PainMonitoringCPOT
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with CPOT"
Description: "Pain Monitoring in ICU Patients with CPOT"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-CPOT)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithCPOTPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with CPOT"
* code = $cs-celida#cpot "Critical Care Pain Observation Tool (CPOT)"
* timingTiming.code = #Q8H

Instance: PainMonitoringBPS
InstanceOf: assessment-action
Usage: #definition
Title: "Pain Monitoring with BPS"
Description: "Pain Monitoring in ICU Patients with BPS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/pain-monitoring-BPS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithBPSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with BPS"
* code = $cs-celida#bps "Behavioral Pain Scale (BPS)"
* timingTiming.code = #Q8H

Instance: SedationMonitoringRASS
InstanceOf: assessment-action
Usage: #definition
Title: "Sedation Monitoring with RASS"
Description: "Sedation Monitoring in ICU Patients with RASS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/sedation-monitoring-RASS)
* insert publisher-experimental-version(1.0)
* name = "SedationMonitoringWithRASSPlan"
* status = #active
* description = "Sedation monitoring in ICU Patients with RASS"
* code = $sct-us#457441000124102 "Richmond agitation-sedation scale"
* timingTiming.code = #Q8H

Instance: DeliriumMonitoringCAMICU
InstanceOf: assessment-action
Usage: #definition
Title: "Delirium Monitoring with CAMICU"
Description: "Delirium Monitoring in ICU Patients with RASS"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/delirium-monitoring-CAMICU)
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
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/delirium-monitoring-NuDesc)
* insert publisher-experimental-version(1.0)
* name = "DeliriumMonitoringWithNuDESCPlan"
* status = #active
* description = "Delirium monitoring in ICU Patients with NuDESC"
* code = $cs-celida#nudesc "Nursing Delirium Screening Scale (Nu-DESC)"
* timingTiming.code = #Q8H
*/


