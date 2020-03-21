//
//  Operators.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 17/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//


import Foundation

let OPERATORS = ["x", "/", "%", "+", "-"]

// ## Operators functions
func divide(_ x : Int, by y : Int)  -> Int {
	// 100 / 3
	guard y != 0 else {
		print("Division by zero")
		abort();
	}
	return x / y
}

func mod(_ x : Int, by y : Int) -> Int{
	// 100 % 3
	guard y != 0 else {
		print("Division by zero")
		abort();
	}
	return x % y
}

func multiply(_ x : Int ,_ y : Int) -> Int{
	// 100 x 3
	return x * y
}



