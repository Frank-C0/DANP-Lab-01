//
//  LoginView.swift
//  Login Example
//
//  Created by epismac on 25/09/24.
//

import SwiftUI

struct LoginView: View {
    @Binding var isLoggedIn:Bool
    @State private var username=""
    @State private var password=""
    var body: some View {
        VStack{
            Image(.login)
                .resizable()
                .frame(maxWidth: 100, maxHeight: 100)
            TextField("Username", text: $username)
                .textFieldStyle(.roundedBorder)
            SecureField("Password", text: $password)
            //TextField("Password", text: $password)
                .textFieldStyle(.roundedBorder)
            Button("Login", action: btnLogin)
                .buttonStyle(.borderedProminent)
             
            NavigationLink(destination: CreateAccountView()){
                Text("Create my account view")
            }
                .navigationTitle("login")
                .navigationBarTitleDisplayMode(.inline)
                .navigationBarHidden(true)
            
        }
        
        
    }
    func btnLogin(){
        isLoggedIn = true
    }
}
