/**********************************/
/* Recommendation Plan */
/**********************************/
Instance: RecommendationPatientsICUNRSgoal
InstanceOf: recommendation
Usage: #definition
Title: "Recommendation: ICU Patients: NRS goal <4"
Description: "Recommendation for ICU Patients to archive an NRS goal below 4"
* name = "Recommendation9-NRS<4"
* title = "NRS Intervention for Population: ICU Patients NRS goal <4"
* version = "1.0"
* date = "2023-11-17"
* status = #active
* description = "NRS in ICU Patients should be <4"
* insert canonical-url(patients-icu-nrs-goal<4, recommendation/patients-icu-nrs-goal<4)
* experimental = true
* action[+]
  * title = "Intervention_Plan_ICU_Patients_NRS_goal"
  * code = $cs-common-process#guideline-based-care
  * description = "Intervention plan for ICU Patients: NRS goal <4"
  * definitionCanonical = Canonical(InterventionPatientsICUNRSgoal)
  * selectionBehavior = #at-most-one

