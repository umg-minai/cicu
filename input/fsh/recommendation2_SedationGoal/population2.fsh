/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUSedationMonitoring
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients: Sedation Monitoring"
Description: "Population for recommendation 2: ICU Patients Sedation Monitoring"
* insert canonical-url(patients-icu-sedationmonitoring, population/patients-icu-sedation-monitoring)
* name = "ICU_Patients_Sedation_Monitoring"
* description = "ICU Patients: Sedation Monitoring"
* identifier.value = "ICU_Patients_Sedation_Monitoring"
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