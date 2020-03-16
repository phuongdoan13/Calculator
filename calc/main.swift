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

func isValidInteger(_ str : String) -> Bool{
	return Int(str) != nil
}

func isValidOperator(_ str : String) -> Bool{
	return OPERATORS.contains(str)
}


