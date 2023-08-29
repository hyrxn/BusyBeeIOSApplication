//
//  ParentPlan.swift
//  BusyBee
//
//  Created by Felix Leon on 13/07/23.
//

import SwiftUI

struct ParentPlan: View {
    
    @State var activityname: String = ""
    @State var hours: String = " "
    @State var minutes: String = " "
    @State var date: Date = Date.now
    @State var hourMinute: String = " "
    @State var description: String = " "
    
    var body: some View {
        
        VStack{
            
            HStack{
                Button("Back"){
                    //logic
                }
                .font(.title2)
                 Spacer()
                
                Text("Plan")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
                Button("Done"){
                    
                }
                .font(.title2)
                
            }
            .padding(15)
            .padding(.leading, 10)
            Divider()
              
//            HStack{
//                Text ("Activity")
//                    .font(.title3)
//                    .padding(.trailing, 10)
//                TextField("Input Activity Name", text: $activityname)
//                    .textFieldStyle(.roundedBorder)
//            }
//            .padding([.top, .leading, .trailing], 20)
            
            HStack{
                Text ("Activity")
                    .font(.title3)
                    .padding(.trailing, 10)
                ActivityChoserView()
            }
            .padding([.top, .leading, .trailing], 20)
            
            HStack{
                
                Text ("Duration: ")
                    .font(.title3)
                
                TextField(" ", text: $hours)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 50)
                Text ("Hour(s)")
                    .padding(.trailing, 20)
                    .font(.caption)
                TextField(" ", text: $minutes)
                    .textFieldStyle(.roundedBorder)
                    .frame(width: 50)
                Text ("Minute(s)")
                    .padding(.trailing, 20)
                    .font(.caption)
                
            }.padding()
            
            Text ("Activity Start Time ")
                .font(.title3)
//                .padding(.trailing, 190)
                .padding(.top, 5)
                .padding(.bottom, 10)
            
            HStack{
                
                DatePicker("Date", selection: $date, displayedComponents: .date)
                
                DatePicker("Time", selection: $date, displayedComponents: .hourAndMinute)
                    .padding(.leading, 20)

            }
            .padding(.horizontal,20)

            Text("Description:")
                .font(.title3)
                .padding(.top, 20)
                .padding(.trailing, 250)
            
            TextField("Input Description Here", text: $description)
                .textFieldStyle(PlainTextFieldStyle())
                .frame(width: 355)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.gray).padding(.bottom, -150)).padding([.leading, .trailing], 25)
            
            
            HStack{
                Text("Assign to: ")
                    .font(.title3)
                
//                Text("Ferris")
//                    .frame(width: 100, height: 30)
//                    .border(.black)
                
                Image(systemName: "plus.circle.fill")
                
            }.padding(.top, 170).padding(.trailing, 220)
            
            Spacer()
        
            }
        
        
        
    }
}

struct ParentPlan_Previews: PreviewProvider {
    static var previews: some View {
        ParentPlan()
    }
}
