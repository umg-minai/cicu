/*********************/
/* Intervention Plan */
/*********************/
Instance: InterventionPatientsICUwithDelirium
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients with Delirium"
Description: "ICU Patients should be delirium free"
* insert canonical-url(patients-icu-delirium, intervention-plan/patients-icu-delirium)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_with_Delirium"
* title = "Intervention plan for ICU Patients with Delirium"
* identifier.value = "InterventionPlanforICUPAtientswithDelirium"
* date = "2023-09"
* status = #active
* description = "Intensive care patients should be delirium free"
* subjectCanonical = Canonical(PopulationPatientsICUwithDelirium)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUwithDelirium)
//delirium days per patients
* goal[][+]
  * category = 
  * id = ""
  * description.text = "
 