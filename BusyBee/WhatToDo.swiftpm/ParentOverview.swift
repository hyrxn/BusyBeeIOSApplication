//
//  ParentOverview.swift
//  BusyBee
//
//  Created by Felix Leon on 15/07/23.
//

import SwiftUI

struct ParentOverview: View {
    
    @State var activity : Activity
    @StateObject var activityData = ActivityData()
    
    
    var body: some View {
        VStack{
            
            HStack{
                Button("Back"){
                    //logic
                }
                .font(.title2
                )
                .padding(.top, 5)
                Spacer()
                
                Text("Progress")
                    .font(.title)
                Spacer()
                
            }
            .padding(.top, 55)
            .padding(.trailing, 65)
            .padding(.leading,20)
            Divider()
            
            DateView() //untuk munculin tanggal
        // Untuk Progress Bar
            ProgressBarView(width:350, height: 30, percent: CGFloat(activityData.percent), color1: Color.white, color2: Color.yellow)
                .offset(y: -20)
            
            Text("\(activityData.activityDone) of \(activityData.activityTotal) Completed")
                .font(.title)
            
            
            
            Button(action: {}) {
                Spacer()
                Text("Add more").underline()
                    .font(.subheadline)
                    .foregroundColor(.blue)
                    .padding(.trailing, 15)
                    .padding(.top, 2)
                    
            }
            
            
            
        }
        
        VStack{
            
    //        Text("Activities")
    //            .padding(.trailing, 250)
            
            ActivitiesDataView(activity: activityData)
                .frame(height: 470)
            
                    
        }
        
        Button (action: {
           //action
        }) {
            Text("Remind Child")
                .font(.title2).foregroundColor(.black)
                .fontWeight(.bold)
//                .background(RoundedRectangle(cornerRadius:10).fill(Color.yellow)
//                )
        .frame(width: 100000, height: 50, alignment: .center)
       
        }
        .padding(.vertical, 20)
        .background(Color.yellow)
        .buttonStyle(PlainButtonStyle())
        .cornerRadius(20)
       Spacer()
        
        
        
        
    }
    
    struct ParentOverview_Previews: PreviewProvider {
        static var previews: some View {
            ParentOverview(activity: Activity(activityName: "", duration: ""))
        }
    }
}
