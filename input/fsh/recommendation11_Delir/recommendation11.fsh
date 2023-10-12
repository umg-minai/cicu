/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUwithDelirium
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients with Delirium"
Description: "Recommendation for ICU Patients with Delirium"
* name = "Recommendation9-Delir"
* title = "NRS Intervention for Population: ICU Patients with Delirium"
* version = "1.0"
* date = "2023-10-04"
* status = #active
* description = "ICU Patients should be delirium free"
* insert canonical-url(patients-icu-delirium, recommendation/patients-icu-with-delirium)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_with_Delirium"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients with Delirium"
  * definitionCanonical = Canonical(InterventionPatientsICUwithDelirium)
  * selectionBehavior = #at-most-one

