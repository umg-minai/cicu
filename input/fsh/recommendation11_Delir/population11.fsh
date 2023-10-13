/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUwithDelirium
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients with Delirium"
Description: "Population for recommendation 9: ICU Patients with Delirium"
* insert canonical-url(patients-icu-delirium, population/patients-icu-with-delirium)
* name = "ICU_Patients_with_Delirium"
* description = "ICU Patients with Delirium"
* identifier.value = "ICU_Patients_with_Delirium"
* identifier.system = $ceosys
* status = #active
// Include ICU Patients with Delirium
* characteristic[+].definitionByCombination
  * code = #all-of
//Include ICU Patients
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false
// include patients with Delirium
//what would be the right code if I want ICU + any of delirium definitions(sct or loinc)? does #any-of cancel #all-of?
  * characteristic[condition][+]
    * linkId = "delirium"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#231441005 "Delirium"
  * characteristic[assessmentScale][+]
    * linkId = "cam-icu+"
    * definitionByTypeAndValue
      * type = $loinc#54627-5 "Signs and symptoms of delirium (from CAM)"
      * valueRange = ??
  * characteristic[assessmentScale][=].exclude = false
* characteristic[=].exclude = false
