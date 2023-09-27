/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUwithhighNRS
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients with NRS>4"
Description: "Population for recommendation 9: ICU Patients with NRS>4"
* insert canonical-url(patients-icu-highNRS, population/patients-icu-with-high-nrs)
* name = "ICU_Patients_with_NRS>4"
* description = "ICU Patients with NRS>4"
* identifier.value = "ICU_Patients_with_NRS>4"
* identifier.system = $ceosys
* status = #active
// Include ICU Patients with NRS>4
* characteristic[0].definitionByCombination
  * code = #all-of
//Include ICU Patients
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][=].exclude = false
// include patients with NRS >=4
// painObservableLOINC does not yet exist, no suitable characteristic found
  * characteristic[painObsevableLOINC][+]
    * linkId = "NRSinRuhe"
    * definitionByTypeAndValue
      * type = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score]"
      * valueRange
        * low = 4 'score'
  * characteristic[painObsevableLOINC][=].exclude = false
* characteristic[0].exclude = false
