//
//  ChildDoTask.swift
//  BusyBee
//
//  Created by Felix Leon on 14/07/23.
//

import SwiftUI

struct ChildDoTask: View {
    
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
                
                Text("View Activity")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.trailing, 90)
                
            }
            .padding(20)
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
                Text("Cycling")
                    .frame(width: 270, height:40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray))
            }
            .padding([.top, .leading, .trailing], 20)
            
            HStack{
                
                Text ("Duration: ")
                    .font(.title3)
                
                Text("00")
                    .frame(width: 50, height:40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray))
                Text ("Hour(s)")
                    .padding(.trailing, 20)
                    .font(.caption)
                
                Text("45")
                    .frame(width: 50, height:40)
                    .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray))
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
            
            Text("Cycling at home complex. Please remember to wear helmet and safety gears.")
                .padding(.horizontal, 10)
                .padding(.bottom, 70)
                .frame(width: 355, height:150)
                .overlay(RoundedRectangle(cornerRadius: 10).stroke(.gray))
            
            
            HStack{
                Text("Assigned to: ")
                    .font(.title2)
             
                
                Text("Ferris123 (You)")
                    .frame(width: 150, height: 30)
                    .border(.black)
                
                
            }.padding(.top, 10).padding(.trailing, 70)
            
            HStack{
                Text("Upload Proofs :")
                    .font(.title2)
                    .padding(.top,10)
                    
                
                Button(action: {}) {
                    Text("Add Photo").underline()
                        .font(.title2)
                        .foregroundColor(.blue)
                        
                        
                       Spacer()

                }
            }
            .padding(.leading, 19)
            .padding(.bottom, 25)
        }
        
        
        Button (action: {
           //action
        }) {
            Text("Finish")
                .font(.title2).foregroundColor(.black)
//                .background(RoundedRectangle(cornerRadius:10).fill(Color.yellow)
//                )
        .frame(width: 150, height: 60, alignment: .center)
       
        }
        .background(Color.yellow)
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(20)
        
        Spacer()
    }
}

struct ChildDoTask_Previews: PreviewProvider {
    static var previews: some View {
        ChildDoTask()
    }
}
