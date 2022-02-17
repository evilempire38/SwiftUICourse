//
//  MyPropertyWrapper.swift
//  SwiftUICourse
//
//  Created by Андрей Коноплёв on 10.02.2022.
//

import Foundation

class MyPropertyWrapper {
    
}

@propertyWrapper
struct CodingStyle<Value> {
    private var value : Value
    private var formattedString : String
    init(wrappedValue : Value, formattedString : String) {
        self.value = wrappedValue
        self.formattedString = formattedString
    }
    public var wrappedValue : Value {
        get {
            return value
        }
        set {
            value = newValue
        }
    }
}
