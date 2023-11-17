/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUDAASMonitoring
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients: DAAS Monitoring"
Description: "Population for recommendation 8: DAAS Monitoring"
* insert canonical-url(patients-icu-daas-monitoring, population/patients-icu-daas-monitoring)
* name = "ICU_patients-DASMonitoring"
* description = "ICU Patients: Delirium, Analgesia, Anxiety, Sedation Monitoring"
* identifier.value = "ICU_Patients_DAAS_Monitoring"
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