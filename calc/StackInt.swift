//
//  StackInt.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 21/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import Foundation
import Foundation


struct StackInt{
	var items: [Int] = []
	var sum = 0
	func peek() -> Int {
		// #Get the upmost item of the stack
		return items.first!
	}
	
	mutating func pop() -> Int{
		// #Remove and Get the upmost item of the stack
		let upperItem = items.first!
		items.remove(at: 0)
		sum = sum - upperItem
		return upperItem
	}
	
	mutating func push(_ element: Int) {
		// #Add a new item at the top
		items.insert(element, at: 0)
		sum = sum + element
	}
	
	mutating func removeAll(){
		items.removeAll()
	}
}


