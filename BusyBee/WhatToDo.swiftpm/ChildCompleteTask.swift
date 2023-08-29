//
//  ParentOverview.swift
//  BusyBee
//
//  Created by Felix Leon on 15/07/23.
//

import SwiftUI

struct ChildCompleteTask: View {
    
//    let progress: CGFloat = 0.6
    @State var activity: Activity
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
                
                Text("Activities")
                    .font(.title)
                Spacer()
            
            }
            .padding(.top, 10)
            .padding(.trailing, 65)
            .padding(.leading,20)
            Divider()
            
    //   Spacer()
            DateView() //untuk munculin tanggal
        // Untuk Progress Bar
            ProgressBarView(width:350, height: 30, percent: CGFloat(activityData.percent), color1: Color.white, color2: Color.yellow)
                .offset(y: -20)
            
            Text("\(activityData.activityDone) of \(activityData.activityTotal) Completed")
                .font(.title)
            
            
    VStack{
        
//        Text("Activities")
//            .padding(.trailing, 250)
        
        ActivitiesDataView(activity: activityData)
            .frame(height: 500)
        
                
    }
          Spacer()
        }
        
        
        
        
    }
    
    
    
 
    
}


struct DateView: View {
    @State private var date = Date()
    
    var body: some View{
        
        Text("\(date.formatted(date : .complete ,time: .omitted))".uppercased())
            .font(.subheadline)
            .fontWeight(.bold)
            .frame(width: 321, height: 20)
            .padding(.top, 30)
            .padding(.leading, 30)
            .offset(x: -80, y: -25)
    }
    
}


struct ChildCompleteTask_Previews: PreviewProvider {
    
    static var previews: some View {
        ChildCompleteTask(activity: Activity(activityName: "", duration: ""))
    }
}
