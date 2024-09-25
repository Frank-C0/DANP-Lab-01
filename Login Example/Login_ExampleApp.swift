//
//  Login_ExampleApp.swift
//  Login Example
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

@main
struct Login_ExampleApp: App {
    
    @State var isLoggedIn:Bool=false
    
    var body: some Scene {
        WindowGroup {
            //ContentView()
            if isLoggedIn{
                HomeView()
            }else{
                LoginView(isLoggedIn: $isLoggedIn)
            }
        }
    }
}
