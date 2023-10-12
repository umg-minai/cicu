/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUPainMonitoring
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: Pain Monitoring"
Description: "ICU Patients: Pain Monitoring"
* insert canonical-url(patients-icu-pain-monitoring, intervention-plan/patients-icu-pain-monitoring)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_Pain_Monitoring"
* title = "Intervention plan for ICU Patients: Pain Monitoring"
* identifier.value = "InterventionPlanforICUPatientsPainMonitoring"
* date = "2023-10"
* status = #active
* description = "In intensive care patients pain should be monitored with validated pain scores at least 1 time per shift "
* subjectCanonical = Canonical(PopulationPatientsICUPainMonitoring)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUPainMonitoring)
//action PainMonitoring to be added by Gregor
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringNRS)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringVAS)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringVRS)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringFPS-R)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"
// CELIDA eigener code (muss erstellt werden)
//* action[painMonitoring][+]
 // * definitionCanonical = Canonical (PainMonitoringBPS)
  //* selectionBehavior = #one-or-more
 // * code = $sct#710995003 "Pain monitoring"
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringCPOT)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"
* action[painMonitoring][+]
  * definitionCanonical = Canonical (PainMonitoringPIR)
  * selectionBehavior = #one-or-more
  * code = $sct#710995003 "Pain monitoring(procedure)"

/**********************/
/* Recommended Actions */
/**********************/
Instance: InterventionPainMonitoringNRS
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with NRS"
Description: "Pain Monitoring in ICU Patients with NRS"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithNRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with NRS"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[loinc] = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" 
* timing[+]
  * Timing = #Q8H

Instance: InterventionPainMonitoringVAS
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with VAS"
Description: "Pain Monitoring in ICU Patients with VAS"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-VAS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithVASPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with VAS"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[loinc] = $loinc#38214-3 "Pain severity [Score] Visual analog score"
* timing[+]
  * Timing = #Q8H

Instance: InterventionPainMonitoringVRS
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with VRS"
Description: "Pain Monitoring in ICU Patients with VRS"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-VRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithVRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with VRS"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[loinc] = $loinc#54834-7 "Rate pain severity during assessment period using verbal descriptor scale"
* timing[+]
  * Timing = #Q8H

Instance: InterventionPainMonitoringFPS-R
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with FPS-R"
Description: "Pain Monitoring in ICU Patients with FPS-R"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-FPS-R)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithFPS-RPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with FPS-R"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[loinc] = $loinc#57696-7 "Pain severity FPS-R"
* timing[+]
  * Timing = #Q8H

Instance: InterventionPainMonitoringCPOT
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with CPOT"
Description: "Pain Monitoring in ICU Patients with CPOT"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-CPOT)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithCPOTPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with CPOT"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[omop] = $omop#722042 "Critical Care Pain Observation Tool (CPOT)"
* timing[+]
  * Timing = #Q8H

Instance: InterventionPainMonitoringNRS
InstanceOf: pain-monitoring-action
Usage: #definition
Title: "Pain Monitoring with NRS"
Description: "Pain Monitoring in ICU Patients with NRS"
* insert canonical-url(patients-icu-pain-monitoring, recommended-action/pain-monitoring-NRS)
* insert publisher-experimental-version(0.1)
* name = "PainMonitoringWithNRSPlan"
* status = #active
* description = "Pain monitoring in ICU Patients with NRS"
* code = $sct#710995003 "Pain monitoring(procedure)"
* productCodeableConcept
  * coding[loinc] = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" 
* timing[+]
  * Timing = #Q8H
      
