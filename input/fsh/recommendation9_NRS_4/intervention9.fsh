/*********************/
/* Recommendation Plan */
/*********************/
Instance: InterventionPatientsICUNRSgoal
InstanceOf: recommendation-plan
Usage: #definition
Title: "Intervention plan for ICU Patients: NRS goal <4"
Description: "In ICU Patients NRS should be <4"
* insert canonical-url(patients-icu-nrs-goal<4, intervention-plan/patients-icu-nrs-goal<4)
* insert publisher-experimental-version(7.0)
* name = "Intervention_Plan_ICU_Patients_NRS_Goal<4"
* title = "Intervention plan for ICU Patients: NRS goal <4"
* identifier.value = "InterventionPlanforICUPatientsNRSGoal<4"
* date = "2023-11"
* status = #active
* description = "In intensive care patients NRS should be <4"
* subjectCanonical = Canonical(PopulationPatientsICUNRSgoal)
* extension[partOf].valueCanonical = Canonical(RecommendationPatientsICUNRSgoal)
* action[painManagement][+]
  * code = $sct#278414003 "Pain management (procedure)"
  * goalId[+] = "pain-management-goal"
* goal[assessmentScale][+]
  * id = "pain-management-goal"
  * description.text = "NRS should not be >4"
  * category = $sct#273249006 "Assessment scales (assessment scale)"
  * target
    * measure = $loinc#72514-3 "Pain severity - 0-10 verbal numeric rating [Score] - Reported"
    * detailRange
      * high.value = 3


/**********************/
/* Recommended Actions */
/**********************/

//????

/*Instance: AnxietyMonitoringSTAI
InstanceOf: assessment-action
Usage: #definition
Title: "Anxiety Monitoring with STAI"
Description: "Anxiety Monitoring in ICU Patients with STAI"
* insert canonical-url(patients-icu-daas-monitoring, recommended-action/anxiety-monitoring-NuDesc)
* insert publisher-experimental-version(1.0)
* name = "AnxietyMonitoringWithSTAIPlan"
* status = #active
* description = "Anxiety monitoring in ICU Patients with STAI"
* code = $sct#273830002 "Spielberger state-trait anxiety inventory (assessment scale)"
* timingTiming.code = $cs-gts-abbreviation#Q8H
*/