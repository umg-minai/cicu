/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUnoDeliriumGoal
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients No Delirium Goal"
Description: "Recommendation for ICU Patients: The Delirium Goal is no Dilirium"
* name = "Recommendation9-Delirium-Goal"
* title = "Delirium Intervention for Population: ICU Patients Delirium Goal"
* version = "1.0"
* date = "2023-11"
* status = #active
* description = "ICU Patients should be delirium free"
* insert canonical-url(patients-icu-no-delirium-goal, recommendation/patients-icu-no-delirium-goal)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_No_Delirium_Goal"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: Delirium Goal is no Delirium"
  * definitionCanonical = Canonical(InterventionPatientsICUnoDeliriumGoal)
  * selectionBehavior =#all

