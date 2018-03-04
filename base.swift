//
//  Planet.swift
//
//
//  An enum type is a special data type that enables for a variable to be 
//     a set of predefined constants. 
//  The variable must be equal to one of the values that have been
//      predefined for it.
//
//	This program uses enumeration to save position and name of the planets
//
//
//
//  Created by Heejo Suh in Feb 2018
//  Copyright @ 2018 MTHS. All rights reserved.
//

//			swiftc Planet.swift


//declare enum
//declare data type
enum PlanetEnum : String {
	case MERCURY
	case VENUS
	case EARTH
	case MARS
	case JUPITER
	case SATURN
	case URANUS
	case NEPTUNE
	
	//static let allValues = [foo, bar, baz] //must maintain second copy of values
	//PlanetEnum.allValues[2]
	
	func getDistance(which: PlanetEnum) -> Double {
		//return distance
		switch which {
			case .MERCURY: return 57.9
			case .VENUS: return 108.2
			case .EARTH: return 149.6
			case .MARS: return 227.9
			case .JUPITER: return 778.3
			case .SATURN: return 1427.0
			case .URANUS: return 2871
			case .NEPTUNE: return 4497.1
		}	
	}
	
}
//func getDistance(key: PlanetEnum) -> Double {return key.rawValue}  

//------------

var input: String?

//var selectedPlanet: PlanetEnum?
var notGottenDistance = true

while notGottenDistance{
	//get valid input
	print("\nWhere would you like to go to? Selection: MERCURY, VENUS, EARTH, MARS, JUPITER, SATURN, URANUS, or NEPTUNE");
	
	
	input = readLine(strippingNewline: true)
	//check if valid
	if let selectedPlanet = PlanetEnum(rawValue: (input!).uppercased()){
		//if input is in enum
		//then print out output
		print("\nYou wanted to go to \(input!)");
		print("You would need to travel \(selectedPlanet.getDistance(which: selectedPlanet)) million km");
		notGottenDistance = false
	}else{  
		//if input is not in enum
		print("Please input a valid planet!\n");
	}
}


