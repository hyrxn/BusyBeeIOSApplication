//
//  Sign Up Page.swift
//  WhatToDo
//
//  Created by Felix Leon on 12/07/23.
//

import SwiftUI

struct SignUpPage: View {
    
    @State private var name: String = ""
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var repassword: String = ""
    @State private var dob: String = ""
    @State private var isSecure = true
    @State private var birthDate = Date.now
    
    var body: some View {
        
        
        
        HStack {
            
            Text("Sign Up Here")
                .font(.title)
                .fontWeight(.bold)
                .padding(.bottom, 25)
                .padding(.leading, 40)
                
            
            Image("Circle logo BusyBee")
            .resizable()
            .scaledToFit()
            .shadow(radius: 2)
            .padding(.trailing, 10)
            .padding(.bottom, 25)
            .frame(width: 150, height: 100)
            
        }
        
        TextField("Name", text: self.$name)
            .frame(height: 57)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 25)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
            .frame(width: 300, height: 57)
            .padding([.horizontal], 25)
            .padding(.bottom, 17)
            
        Test(placeholder: "Password", text: "")
            .frame(width: 300, height:57)
            .padding([.horizontal], 25)
            .padding([.vertical], 17)
        
        Test(placeholder: "Re password", text: "")
            .frame(width: 300, height:57)
            .padding([.horizontal], 25)
            .padding([.vertical], 17)
        
        TextField("Email", text: self.$email)
            .frame(height: 57)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 25)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
            .frame(width: 300, height: 57)
            .padding([.horizontal], 25)
            .padding([.vertical], 17)
        
        DropdownView()
            .padding(.top, 20)
        
        HStack{
            
        Text("Date Of Birth")
        Spacer()
//            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date){
//
//
//            }
            
            DatePicker(selection: $birthDate, in: ...Date.now, displayedComponents: .date){
                
            }
            
        } .frame(width: 300, height: 57)
            .padding([.horizontal], 25)
            .padding([.vertical], 17)
        
        
        
        
        
//            Text("Date is \(birthDate.formatted(date: .long, time: .omitted))")
        
//        TextField("Date of Birth", text: self.$dob)
//            .frame(height: 57)
//            .textFieldStyle(PlainTextFieldStyle())
//            .padding([.horizontal], 25)
//            .cornerRadius(10)
//            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
//            .frame(width: 350, height: 57)
//            .padding([.horizontal], 25)
//            .padding([.vertical], 17)
        
        Button(action: {
            // Add login logic here
        }, label: {
            Text("Sign Up")
                .font(.headline)
                .foregroundColor(.black)
                .padding()
                .frame(width: 300, height: 57)
                .background(Color.yellow)
                .cornerRadius(10)
                .padding(.top,10)
        }
        )
        
    }
}

struct SignUpPage_Previews: PreviewProvider {
    static var previews: some View {
        SignUpPage()
    }
}
