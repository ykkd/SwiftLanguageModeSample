//
//  Swift6.swift
//  SwiftLanguageModeSample
//
//  Created by ykkd on 2024/09/19.
//

import Foundation

class NonSendable {}

actor MyActor {
    func test() {
        let ns = NonSendable()

        let closure = { @MainActor in
            print(ns)
        }
        
        Task {
            await closure() // okay
        }
    }
}
