/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUSedationGoal
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients Sedation Goal RASS"
Description: "Recommendation for ICU Patients: Sedation Goal RASS is 0 to -1"
* name = "Recommendation10-Sedation-Goal-RASS"
* title = "RASS Intervention for Population: Sedation Goal RASS"
* version = "1.0"
* date = "2023-08-13"
* status = #active
* description = "RASS in ICU Patients should be 0 or 1"
* insert canonical-url(patients-icu-Sedation-goal, recommendation/patients-icu-sedation-goal)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_Sedation_goal"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: Sedation Goal RASS 0 to -1"
  * definitionCanonical = Canonical(InterventionPatientsICUSedationGoal)
  * selectionBehavior = #at-most-one

