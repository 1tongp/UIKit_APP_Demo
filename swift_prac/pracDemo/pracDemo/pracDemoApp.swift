//
//  pracDemoApp.swift
//  pracDemo
//
//  Created by Yitong Pei on 17/6/2022.
//

import SwiftUI

@main
struct pracDemoApp: App {
    
    @Environment(\.scenePhase) var scenePhase
    
    var body: some Scene {
        WindowGroup {
            ColorPickerDemo()
        }.onChange(of:scenePhase) {(newSencePhase) in
            switch newSencePhase{ // status control 
            case .active:
                print("active")
            case .background:
                print("background")
            case .inactive:
                print("inactive")
            default:
                print("default")
            }
        }
    }
}
