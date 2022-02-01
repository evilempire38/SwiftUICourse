//
//  ContentView.swift
//  SwiftUICourse 2
//
//  Created by Андрей Коноплёв on 23.01.2022.
//

import SwiftUI
import UIKit

struct LoginView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var isAcPresented = false
    @State var isUserLoggedIn : Bool
    let alertMessage : String = "Login data error"
    
    var body: some View {
        ZStack {
            Color.cyan.ignoresSafeArea()
            VStack {
                HStack {
                    Text("Login:")
                    Spacer()
                    TextField("", text: $login)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                HStack {
                    Text("Password:")
                    Spacer()
                    SecureField("", text: $password)
                        .frame(maxWidth: 150)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                }
                Button(action : verify) {
                    Text("Login")
                    
                }.foregroundColor(.black)
                    
                    
                
                
                .padding(.top, 50)
                .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)
                
            }.frame(maxWidth: 250)
                .alert(isPresented: $isAcPresented, content: {
                    Alert(title: Text("Warning"), message: Text(alertMessage), dismissButton: .cancel())
                })
        }
        }
    private func verify() {
        if login == "Admin" && password == "1234" {
            isUserLoggedIn = true
        } else {
            isAcPresented = true
        }
    }
    }



