//
//  ContentView.swift
//  SwiftUICourse 2
//
//  Created by Андрей Коноплёв on 23.01.2022.
//

import SwiftUI
import UIKit

struct ContentView: View {
    @State private var login = ""
    @State private var password = ""
    @State private var isAcPresented = false
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
                Button("Login") {
                    isAcPresented = true
                }
                .foregroundColor(.black)
                .alert("Logged", isPresented: $isAcPresented, actions: {
                    Button("OK", role : .cancel){}
                })
                
                .padding(.top, 50)
                .padding(.bottom, 20)
                .disabled(login.isEmpty || password.isEmpty)
                
            }.frame(maxWidth: 250)
        }
        }
    }

    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }

