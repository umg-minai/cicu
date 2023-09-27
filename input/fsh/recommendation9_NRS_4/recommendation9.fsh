/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUwithhighNRS
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients with NRS>4"
Description: "Recommendation for ICU Patients with NRS>4"
* name = "Recommendation9-NRS"
* title = "NRS Intervention for Population: ICU Patients with NRS>4"
* version = "1.0"
* date = "2023-08-05"
* status = #active
* description = "NRS in ICU Patients should be <4"
* insert canonical-url(patients-icu-highNRS, recommendation/patients-icu-with-high-nrs)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_with_NRS>4"
  //not sure if right code:
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients with NRS>4"
  * definitionCanonical = Canonical(InterventionPatientsICUwithhighNRS)
  * selectionBehavior = #at-most-one

