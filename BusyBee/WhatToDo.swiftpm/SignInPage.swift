//
//  Sign In Page.swift
//  WhatToDo
//
//  Created by Felix Leon on 12/07/23.
//

import SwiftUI

struct SignInPage: View {
    
    @State private var email: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
            Image("Circle logo BusyBee")
            .resizable()
            .scaledToFit()
            .shadow(radius: 5)
            .padding([.leading, .trailing], 10)
            .padding(.bottom, 15)
        
        Text("Sign In Here")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom, 30)
            .offset(x:-50)
        
        TextField("Email", text: self.$email)
            .frame(height: 57)
            .textFieldStyle(PlainTextFieldStyle())
            .padding([.horizontal], 25)
            .cornerRadius(10)
            .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray))
            .frame(width: 300, height: 57)
            .padding([.horizontal], 25)
            .padding(.bottom, 10)
            
        Test(placeholder: "Password", text: "")
            .frame(width: 300, height:57)
            .padding([.horizontal], 25)
            .padding([.vertical], 17)
        
        Button(action: {
            // Add login logic here
        }, label: {
            Text("Sign In")
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

struct SignInPage_Previews: PreviewProvider {
    static var previews: some View {
        SignInPage()
    }
}
