//
//  Calculator.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 17/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import Foundation

public class Calculator{
	private let INPUT : [String]
	private var numbers = StackInt()
	init(_ input : [String]){
		// # Constructor
		self.INPUT = input
		
	}

	func use(){
		// # Main Method
		if(isValid()){
			calc(INPUT)
			print(numbers.sum)
		}
	}
	
	func calc(_ args : [String]){
		// # Calculator's brain
		// Ref: https://leetcode.com/problems/basic-calculator-ii/discuss/500711/Swift-Simple-faster-than-100
		var op : String = "+"
		for element in args{
			if(element.isOperator){
				op = element
			}else{
				let currentNumber = Int(element)!
				switch op{
				case "+": numbers.push(currentNumber)
				case "-": numbers.push(-currentNumber)
				case "x": numbers.push(multiply(numbers.pop(), currentNumber))
				case "/": numbers.push(divide(numbers.pop(), by: currentNumber))
				case "%": numbers.push(mod(numbers.pop(), by: currentNumber))
				default: break
				}
			}
		}
	}
	func isValid() -> Bool  {
		if(INPUT.count % 2 == 0){
			print("Incomplete expression. Expected input of the form [number] [operator number ...]")
			abort()
		}

		// boolInput indicate at which index the data doesn't match (odd index: number, even index: operator). e.g ["2" , "+", "s"] would give bool input of [true, true, false]
		let boolInput = INPUT.enumerated().map({ (key: Int, value: String) in key % 2 == 0 ? value.isInt : value.isOperator})
		var i = 0
		for boolValue in boolInput{
			if(i % 2 == 0 && boolValue == false){
				print("Invalid Number: \(INPUT[i])")
				abort()
				//throw InvalidInput.invalidNumber
			}else if(i % 2 == 1 && boolValue == false){
				print("Unknown Parameter: \(INPUT[i])")
				abort()
			}
			i = i + 1
		}

		return true
	}
}
/*
enum InvalidInput: Error{
	case invalidNumber
	case unknownOperator
}

extension InvalidInput : LocalizedError{
	public var errorDescription: String? {
		switch self{
		case .invalidNumber:
			return "Invalid Number: "
		case .unknownOperator:
			return "Unknown Parameter: "
		}
	}
}
*/
