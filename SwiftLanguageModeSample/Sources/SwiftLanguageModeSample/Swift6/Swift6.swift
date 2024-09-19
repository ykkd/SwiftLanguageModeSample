//
//  Swift6.swift
//  SwiftLanguageModeSample
//
//  Created by ykkd on 2024/09/19.
//

import Foundation

class NonSendable {}

@MainActor
struct S {
    let ns: NonSendable
    
    func getNonSendableInvalid() -> sending NonSendable {
        // error: sending 'self.ns' may cause a data race
        // note: main actor-isolated 'self.ns' is returned as a 'sending' result.
        //       Caller uses could race against main actor-isolated uses.
        return ns
    }
    
    func getNonSendable() -> sending NonSendable {
        return NonSendable() // okay
    }
}
