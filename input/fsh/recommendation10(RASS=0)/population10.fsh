/**************/
/* Population */
/**************/
Instance: PopulationPatientsICUwithRASSnot0
InstanceOf: recommendation-eligibility-criteria
Usage: #definition
Title: "Population: ICU Patients with RASS≠0"
Description: "Population for recommendation 10: ICU Patients with RASS≠0"
* insert canonical-url(patients-icu-RASSnot0, population/patients-icu-with-RASS-not-0)
* name = "ICU_Patients_with_RASS≠0"
* description = "ICU Patients with RASS≠0"
* identifier.value = "ICU_Patients_with_RASS≠0"
* identifier.system = $ceosys
* status = #active
//Exclude patients with indication for deeper sedation
* characteristic[+].definitionByCombination
  * code = #any-of
  * characteristic[condition][+]
    * linkId = "traumatic-brain-injury"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#127295002 "Traumatic brain injury"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "status-epilepticus"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#230456007 "Status epilepticus"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "increased-oxygen-demand"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#238163001 "Increased oxygen demand"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "at-risk-of-injury"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#81763001 "At risk of injury"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "acute-respiratory-distress-syndrome"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#67782005 "ARDS"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "shock"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#27942005 "Shock"
  * characteristic[condition][=].exclude = false
  //can I define the population by "procedure" concept, not by "clinical finding"? 
  * characteristic[condition][+]
    * linkId = "positioning-therapy"
    * definitionByTypeAndValue
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#226048001 "Positioning therapy"
  * characteristic[condition][=].exclude = false
  * characteristic[condition][+]
    * linkId = "positioning-therapy"
    * definitionByTypeAndValue
//not sure if right concept 
      * type = $sct#404684003 "Clinical finding (finding)"
      * valueCodeableConcept = $sct#257884004 "Immobilization - action"
  * characteristic[condition][=].exclude = false
* characteristic[=].exclude = true
//Include ICU Patients 
* characteristic[+].definitionByCombination
  * code = #all-of
  * characteristic[episodeOfCare][+]
    * linkId = "intensive-care-treatment"
    * definitionByTypeAndValue
      * type = $loinc#78030-4 "Episode of care Type"
      * valueCodeableConcept = $cs-kontaktart-de#intensivstationaer "Intensivstationär"
  * characteristic[episodeOfCare][+].exclude = false
// include patients with RASS≠0 (or include all except for the patients with indication for deeper sedation?)
//include characteristic[measurement]?
//* characteristic[measurement][+]
//  * linkId = "RASS"
 // * definitionByTypeAndValue
 //   * type = $sct#254291000 "Staging and scales"
  //  * valueCodeableConcept = $sct#457441000124102 "Richmond agitation-sedation scale"
 //   * valueRange
//how to write ≠0? value[?]?
 //     * low = -5
  //    * high = 5
//* characteristic[measurement][=].exclude = false
  * characteristic[procedure][+]
    * linkId = "sedation"
    * definitionByTypeAndValue
      * typeCodeableConcept = $sct#71388002 "Procedure (procedure)"
      * valueCodeableConcept = $sct#72641008 "Sedation"
* characteristic[=].exclude = false