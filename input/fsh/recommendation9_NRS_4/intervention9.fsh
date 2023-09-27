/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUwithhighNRS
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients with NRS>4"
Description: "In ICU Patients NRS should be <4"
* insert canonical-url(patients-icu-highNRS, intervention-plan/patients-icu-with-high-nrs)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_with_NRS>4"
* title = "Intervention plan for ICU Patients with NRS>4"
* identifier.value = "InterventionPlanforICUPatientswithhighNRS"
* date = "2023-08"
* status = #active
* description = "In intensive care patients NRS should be <4"
* subjectCanonical = Canonical(PopulationPatientsICUwithhighNRS)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUwithhighNRS)
//loads of mistakes: due to nonexistant action?
* action[painManagement][+]
  * code = $sct#278414003 "Pain management (procedure)"
  * goalId[+] = "pain-management-goal"
* goal[painManagement][+]
  * category = $sct#710995003 "Pain monitoring"
  * id = "pain-management-goal"
  * description.text = "NRS should not be >4"
  * target
    * measure = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported" 
    * detailRange
      * high = 3 'score'
