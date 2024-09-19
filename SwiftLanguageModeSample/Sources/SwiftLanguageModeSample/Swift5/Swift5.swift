//
//  Swift5.swift
//  SwiftLanguageModeSample
//
//  Created by ykkd on 2024/09/19.
//

import Foundation

//class NonSendable {
//    var hoge: String = "Hoge"
//}
//
//actor MyActor {
//    func test() {
//        let ns = NonSendable()
//
//        let closure = { @MainActor in
//            print(ns.hoge)
//        }
//
//        ns.hoge = "fuga"
//
//        Task {
//            await closure() // okay
//        }
//    }
//}

class NonSendable {
  func test() {}
}

@MainActor
class IsolatedSubclass: NonSendable {
  func trySendableCapture() {
    Task.detached {
      self.test() // error: Capture of 'self' with non-sendable type 'IsolatedSubclass' in a `@Sendable` closure
    }
  }
}
