//
//  main.swift
//  calc
//
//  Created by Jesse Clark on 12/3/18.
//  Copyright © 2018 UTS. All rights reserved.
//
//  Run this file in Bash: ./Library/Developer/Xcode/DerivedData/calc-geknieilqeogiubcwhmzyuebdhib/Build/Products/Debug/calc
import Foundation

var args = ProcessInfo.processInfo.arguments
args.removeFirst() // remove the name of the program
let calculator = Calculator(args)
calculator.use()







