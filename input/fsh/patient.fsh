Profile: EuropeanSingle 
Parent: Patient
Id: european-single
Title: "European Single"
Description: "some description"
* name 1..*
* address 2..*
* address.line 0..3
* maritalStatus = http://snomed.org/info#125681006 "Single person (finding)"
* communication.language = http://snomed.org/info#297931006 
* link 0..0

Instance: EuropeanSingleInstance
InstanceOf: Patient
Usage: #example
Title: "EuropeanSingleInstance"
Description: "description"
* gender = #female

