//
//  Calculator.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 17/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import Foundation

public class Calculator{
	private var numbers = Stack()
	private var operators = Stack()
	private let INPUT : [String]
	/////////////////////////////////////////////
	init(_ input : [String]){
		// # Constructor
		self.INPUT = input
	}

	func use(){
		// # Main Method
		if(!isValidInput()){
			return;
		}
	}
	
	func isValidInput() -> Bool{
		let isIntOp = !INPUT.map{ $0.isValid }.contains(false) // O(n) check if all elements are integer and operator element
		let isOddLength = (INPUT.count > 1 && INPUT.count % 2 == 1) // The array must be odd in length
		
		if(!INPUT[0].isInt){
			print("Invalid number: \(INPUT[0])")
			return false
		}else if !(isIntOp && isOddLength){
			print("Incomplete expression. Expected input of the form [number] [operator number ...]")
			return false
		}
		return true;
	}
	
	
}

