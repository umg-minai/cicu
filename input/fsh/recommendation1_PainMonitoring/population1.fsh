/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUPainMonitoring
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients: Pain Monitoring"
Description: "Population for recommendation 1: ICU Patients Pain Monitoring"
* insert canonical-url(patients-icu-painmonitoring, population/patients-icu-pain-monitoring)
* name = "ICU_Patients_Pain_Monitoring"
* description = "ICU Patients: Pain Monitoring"
* identifier.value = "ICU_Patients_Pain_Monitoring"
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