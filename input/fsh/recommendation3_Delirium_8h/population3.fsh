/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUDeliriumMonitoring
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients: Delirium Monitoring"
Description: "Population for recommendation 3: Delirium Monitoring"
* insert canonical-url(patients-icu-delirium-monitoring, population/patients-icu-delirium-monitoring)
* name = "ICU_patients-DeliriumMonitoring"
* description = "ICU Patients: Delirium Monitoring"
* identifier.value = "ICU_Patients_Delirium_Monitoring"
* identifier.system = $ceosys
* status = #active
// Include ICU Patients
* characteristic[0].definitionByCombination
  * code = #all-of
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false