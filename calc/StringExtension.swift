//
//  StringExtension.swift
//  calc
//
//  Created by ヴァイオレット・エヴァーガーデン on 17/3/20.
//  Copyright © 2020 UTS. All rights reserved.
//

import Foundation

extension String : LocalizedError{
	public var errorDescription: String? {
		// # Throw String error when there is bug
		return self
	}
	
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

