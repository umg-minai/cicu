/*********************/
/* Intervention Plan */
/*********************/
Instance: InterventionPatientsICUSedationGoal
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: Sedation goal RASS 0 to -1"
Description: "In ICU Patients RASS should be 0 or -1, with exeption for specificaly indicated deeper sedation"
* insert canonical-url(patients-icu-sedation-goal, intervention-plan/patients-icu-sedation-goal)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_Sedation_Goal"
* title = "Intervention plan for ICU Patients:  Sedation Goal is RASS 0 to -1, with exeption for specificaly indicated deeper sedation "
* identifier.value = "InterventionPlanforICUPAtientsSedationGoal"
* date = "2023-11"
* status = #active
* description = "In intensive care patients Seadtion in RASS should be 0 or -1, with exeption for specificaly indicated deeper sedation"
* subjectCanonical = Canonical(PopulationPatientsICUSedationGoal)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUSedationGoal)
* goal[assessmentScale][+]
  * id = "sedation-management-RASS-goal"
  * description.text = "RASS should be 0 to -1"
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * target
    * measure = $sct-us#457441000124102 "Richmond agitation-sedation scale"
    * detailRange
      * low = -1 'score'
      * high = 0 'score'
* action[sedationManagement][+]
  * code = $sct#406187008 "Sedation management (procedure)"
  * goalId[+] = "sedation-management-RASS-0-goal"