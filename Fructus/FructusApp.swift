//
//  FructusApp.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding :Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding{
                OnBoardingView()
            }else{
                ContentView()
            }
        }
    }
}
