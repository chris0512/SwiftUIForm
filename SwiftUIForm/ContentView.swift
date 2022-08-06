//
//  ContentView.swift
//  SwiftUIForm
//
//  Created by Yang Chi on 2022/8/6.
//

import SwiftUI

struct ContentView: View {
    
    @State private var firstName = ""
    @State private var lastName = ""
    @State private var birthdate = Date()
    @State private var shouldSendNewsletter = false
    @State private var numberOfLikes = 1
    
    var body: some View {
        NavigationView {
            
            Form {
                Section(header: Text("Personal Information")) {
                    TextField("First Name", text: $firstName)
                    TextField("Last Name", text: $lastName)
                    DatePicker("Birthdate", selection: $birthdate, displayedComponents: .date)
                }
                
                Section(header: Text("Actions")) {
                    Toggle("Send Newsletter", isOn: $shouldSendNewsletter)
                        .toggleStyle(SwitchToggleStyle(tint: .blue))
                    Stepper("Number of Likes", value: $numberOfLikes, in: 1...10)
                    Text("This app has \(numberOfLikes) likes")
                    Link("Term of Service", destination: URL(string:"https://www.google.com")!)
                }
            }
            .navigationTitle("Account")
            
        }
        .accentColor(.blue)
        
    }
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


