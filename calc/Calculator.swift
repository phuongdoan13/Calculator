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
		}

		// boolInput indicate at which value
		
		let boolInput = INPUT.enumerated().map({ (key: Int, value: String) in key % 2 == 0 ? value.isInt : value.isOperator})
		var i = 0
		for boolValue in boolInput{
			if(i % 2 == 0 && boolValue == false){
				print("Invalid Number: \(INPUT[i])")
				return false
				//throw InvalidInput.invalidNumber
			}else if(i % 2 == 1 && boolValue == false){
				print("Unknown Parameter: \(INPUT[i])")
				return false
				//throw InvalidInput.unknownOperator
			}
			i = i + 1
		}

		return true
	}
}

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

