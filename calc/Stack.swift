//
//  Stack.swift
//
// 	Stack Data Structure
//
//  Created by ヴァイオレット・エヴァーガーデン on 16/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//
//

import Foundation

struct Stack {
    private var items: [String] = []
    
    func peek() throws -> String {
        // Get the upmost item of the stack
        guard let upperItem = items.first else {throw StackError.EmptyStack}
        return upperItem
    }
    
    mutating func pop() throws -> String{
        // Remove and Get the upmost item of the stack
		guard let upperItem = items.first else {throw StackError.EmptyStack}
		items.remove(at: 0)
		return upperItem
    }
    
    mutating func push(_ element: String) {
		// Add a new item at the top
        items.insert(element, at: 0)
    }
	
	mutating func removeAll(){
		items.removeAll()
	}
}

enum StackError: Error {
	case EmptyStack
}
