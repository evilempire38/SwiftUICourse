//
//  ContentView.swift
//  SwiftUICourse
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

struct UserCellView : View {
    let user = UserModel(name: "Fedor", surname: "Fedorov")
    
    var body: some View {
        HStack(alignment: .center, spacing: 8) {
            Image(systemName: "person.fill").modifier(ImageViewMod())
            Text(user.name + " " + user.surname)
        } .frame(width: 250, height: 50, alignment: .center)
    }
}

struct GroupCellView : View {
    let group = GroupModel(groupName: "Automative", groupUserCount: 45567)
    var body: some View {
        HStack{
            Image(systemName: "person.3").modifier(ImageViewMod())
            VStack {
                Text(group.groupName)
            }
        }
    }
}

struct ImageViewMod: ViewModifier {
    func body(content: Content) -> some View {
        return content
            .scaledToFit()
            .border(Color.blue)
            .cornerRadius(15)
            .frame(width: 30, height: 30, alignment: .leading)
            .opacity(0.5)
    }
    }

    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
            UserCellView()
            GroupCellView()
            
        }
    }

