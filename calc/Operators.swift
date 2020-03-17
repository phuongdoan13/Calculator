//
//  Operators.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 17/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//


import Foundation

let OPERATORS = ["*", "/", "%", "+", "-"]

// Reference: https://theswiftdev.com/how-to-use-the-result-type-to-handle-errors-in-swift/
// # Handle divide by Zero
enum DivisionError: Error{
	case zeroDivisor
}

extension DivisionError : LocalizedError{
	public var errorDescription: String? {
		switch self{
		case .zeroDivisor:
			return "Division by zero"
		}
	}
}

// # Operators functions
func divide(_ x : Int, by y : Int) throws -> Int {
	// 100 / 3
	guard y != 0 else {
		throw DivisionError.zeroDivisor
	}
	return x / y
}

func mod(_ x : Int, by y : Int) throws -> Int{
	// 100 % 3
	guard y != 0 else {
		throw DivisionError.zeroDivisor
	}
	return x % y
}

func multiply(_ x : Int ,_ y : Int) -> Int{
	// 100 x 3
	return x * y
}

func add(_ x : Int, _ y : Int) -> Int{
	// 100 + 3
	return x + y
}

func minus(_ x : Int, _ y : Int) -> Int{
	// 100 - 3
	return x - y
}
