//
//  File.swift
//  SwiftLanguageModeSample
//
//  Created by ykkd on 2024/09/19.
//

import Foundation

let a = MyActor()
await a.test()
try? await Task.sleep(nanoseconds: 10000000)
