/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUnoDeliriumGoal
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients no Delirium Goal"
Description: "Population for recommendation 9: ICU Patients Delirium Goal is no Delirium"
* insert canonical-url(patients-icu-no-delirium-goal, population/patients-icu-no-delirium-goal)
* name = "ICU_Patients_no_Delirium_Goal"
* description = "ICU Patients: Delirium Goal is no Delirium"
* identifier.value = "ICU_Patients_no_Delirium_Goal"
* identifier.system = $ceosys
* status = #active
//Include ICU Patients 
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][+].exclude = false
* characteristic[=].exclude = false
