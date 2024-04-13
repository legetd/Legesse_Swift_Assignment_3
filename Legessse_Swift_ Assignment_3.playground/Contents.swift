import UIKit

var greeting = "Hello, playground"

// Ship superclass
     class Ship {
         let name: String
         let year: Int
         let countryOfOrigin: String
         
         init(name: String, year: Int, countryOfOrigin: String) {
             self.name = name
             self.year = year
             self.countryOfOrigin = countryOfOrigin
         }
     }

// CruiseShip subclass
     class CruiseShip: Ship {
         let maxCapacity: Int
         let oceanOfOperation: String
         var currentPassengerCount: Int = 0
         
         init(name: String, year: Int, countryOfOrigin: String, maxCapacity: Int, oceanOfOperation: String) {
             self.maxCapacity = maxCapacity
             self.oceanOfOperation = oceanOfOperation
             super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
         }
         
         func addPassenger() {
             if currentPassengerCount < maxCapacity {
                 currentPassengerCount += 1
                 print("Passenger added. Current passenger count: \(currentPassengerCount)")
             } else {
                 print("Cannot add more passengers. Max capacity (\(maxCapacity)) reached.")
             }
         }
         
         func printPassengerCount() {
             print("Current passenger count: \(currentPassengerCount)")
         }
     }

// CargoShip subclass
     class CargoShip: Ship {
         let maxCargoCapacity: Int
         var currentCargoCount: Int = 0
         let isInternational: Bool
         
         init(name: String, year: Int, countryOfOrigin: String, maxCargoCapacity: Int, isInternational: Bool) {
             self.maxCargoCapacity = maxCargoCapacity
             self.isInternational = isInternational
             super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
         }
         
         func addCargo() {
             if currentCargoCount < maxCargoCapacity {
                 currentCargoCount += 1
                 print("Cargo added. Current cargo count: \(currentCargoCount)")
             } else {
                 print("Cannot add more cargo. Max capacity (\(maxCargoCapacity)) reached.")
             }
         }
         
         func printCargoCount() {
             print("Current cargo count: \(currentCargoCount)")
         }
     }

// PirateShip subclass
     class PirateShip: Ship {
         let maxTreasureCapacity: Int
         var currentTreasureCount: Int = 0
         let numberOfCannons: Int
         
         init(name: String, year: Int, countryOfOrigin: String, maxTreasureCapacity: Int, numberOfCannons: Int) {
             self.maxTreasureCapacity = maxTreasureCapacity
             self.numberOfCannons = numberOfCannons
             super.init(name: name, year: year, countryOfOrigin: countryOfOrigin)
         }
         
         func addTreasure() {
             if currentTreasureCount < maxTreasureCapacity {
                 currentTreasureCount += 1
                 print("Treasure added. Current treasure count: \(currentTreasureCount)")
             } else {
                 print("Cannot add more treasure. Max capacity (\(maxTreasureCapacity)) reached.")
             }
         }
         
         func printTreasureCount() {
             print("Current treasure count: \(currentTreasureCount)")
         }
     }

// Create an instance of CruiseShip and demonstrating
     let cruiseShip = CruiseShip(name: "Halifax_class", year: 1900, countryOfOrigin: "Canada", maxCapacity: 100, oceanOfOperation: "Nova Scocia")
     print("Ship Name: \(cruiseShip.name)")
     print("Year: \(cruiseShip.year)")
     print("Country of Origin: \(cruiseShip.countryOfOrigin)")
     print("Max Capacity: \(cruiseShip.maxCapacity)")
     print("Ocean of Operation: \(cruiseShip.oceanOfOperation)")

     
