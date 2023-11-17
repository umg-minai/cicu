/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUNRSgoal
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients NRS goal <4"
Description: "Population for recommendation 9: ICU Patients NRS goal <4"
* insert canonical-url(patients-icu-nrs-goal<4, population/patients-icu-nrs-goal<4)
* name = "ICU_Patients_NRS_Goal<4"
* description = "ICU Patients NRS goal <4"
* identifier.value = "ICU_Patients_NRS_Goal<4"
* identifier.system = $ceosys
* status = #active
//Include ICU Patients
* characteristic[0].definitionByCombination
  * code = #all-of
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false

