//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//

import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program

//  ヴァイオレット・エヴァーガーデン  //
let OPERATORS = ["*", "/", "%", "+", "-"] //required operators

var numbers = Stack()
var operators = Stack()

extension String{
	var isInt : Bool{
		return Int(self) != nil
	}
	
	var isOperator : Bool{
		return OPERATORS.contains(self)
	}
	
	var isValid : Bool{
		return self.isInt || self.isOperator
	}
}


func isValidInput(_ arr : [String]) -> Bool{
	let isIntOp = !arr.map{ $0.isValid }.contains(false) // O(n) check if all elements are integer and operator element
	let isOddLength = (arr.count > 1 && arr.count % 2 == 1) // The array must be odd in lenght OR...
	let isSingleWithInt = (arr.count == 1 && arr[0].isInt) //... contains only and only one integer
	return isIntOp && (isOddLength || isSingleWithInt)
}




