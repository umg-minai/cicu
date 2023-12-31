# ICU Patient Care Recommendations Repository

This repository contains machine-readable recommendations for ICU patient care in FHIR format, specifically following the [CPG-on-EBMonFHIR](https://github.com/ceosys/cpg-on-ebm-on-fhir) format.

For additional information, see the [IG documentation](https://umg-minai.github.io/cicu/artifacts.html).

## Recommendations

Below is a table summarizing the recommendations available in this repository.

| No | Name                            | Title                                            | Version | Date       |  Description                                                                                      |
|---:|---------------------------------|--------------------------------------------------|---------|------------|--------------------------------------------------------------------------------------------------|
|  1 | [PainMonitoring](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUPainMonitoring.html)      | Intervention for Population: ICU Patients - Pain Monitoring | 1.0     | 2023-10-05 | In ICU Patients Pain should be monitored with a validated score at least once per shift          |
|  2 | [SedationMonitoring](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUSedationMonitoring.html)  | Intervention for Population: ICU Patients - Sedation Monitoring | 1.0     | 2023-10-05 | In ICU Patients Sedation Goal and Degree should be monitored with a validated score at least once per shift |
|  3 | [DeliriumMonitoring](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUDeliriumMonitoring.html)  | Intervention for Population: ICU Patients - Delirium Monitoring | 1.0     | 2023-11-13 | In ICU Patients Findings ind Delirium Monitoring should be documented at least once per shift    |
|  8 | [DAASMonitoring](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUDAASMonitoring.html)      | Intervention for Population: ICU Patients - DAAS Monitoring | 1.0     | 2023-11    | The treatment goal and the current level of analgesia, sedation, anxiety, and delirium should be standardizedly documented at least once per shift (typically every 8 hours) |
|  9 | [NRS<4](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUNRSgoal.html)               | NRS Intervention for Population: ICU Patients NRS goal <4 | 1.0     | 2023-11-17 | NRS in ICU Patients should be <4                                                                 |
| 10 | [Sedation-Goal-RASS](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUSedationGoal.html) | RASS Intervention for Population: Sedation Goal RASS | 1.0     | 2023-08-13 | RASS in ICU Patients should be 0 or 1                                                            |
|  11 | [Delirium-Goal](https://umg-minai.github.io/cicu/PlanDefinition-RecommendationPatientsICUnoDeliriumGoal.html)       | Delirium Intervention for Population: ICU Patients Delirium Goal | 1.0     | 2023-11    | ICU Patients should be delirium free                                                             |

## Authors

- [Lisa Vasiljewa](https://github.com/lisavasiljewa)
- [Carlo Jurth](https://github.com/cjurth)
- [Gregor Lichtner](https://github.com/glichtner)

## Contributing

Contributions to this repository are welcome. 
