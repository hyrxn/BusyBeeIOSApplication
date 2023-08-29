//
//  ActivitiesData.swift
//  BusyBee
//
//  Created by Felix Leon on 15/07/23.
//

import SwiftUI

struct Activity: Identifiable, Hashable{
    let id = UUID()
    var activityName: String
    var duration: String 
    var isChecked = false
    
    mutating func updateIsChecked() {
        isChecked.toggle()
    }
}

class ActivityData: ObservableObject{
    @Published var activity: [Activity] = [
        
        Activity(activityName: "Read English story book", duration: "1 hour"),
        Activity(activityName: "Cycling", duration: "45 minutes"),
        Activity(activityName: "Join Drawing Class", duration: "30 minutes"),
        Activity(activityName: "Do Math Homework", duration: "1 hour 30 minutes"),
        Activity(activityName: "Study for French Exam", duration: "1 hour"),
        Activity(activityName: "Go on Date", duration: "12 hours")
        
    ]
    
    @Published var activityDone: Int = 0
    @Published var activityTotal: Int = 0
    @Published var test: Int = 0
    @Published var percent: Float = 0.0
    
    func countPercentage() {
        var result = 0
        for act in activity {
            if act.isChecked{
                    result += 1
            }
            test += 1
        }
        activityDone = result
        activityTotal = test
        percent = Float(CGFloat(activityDone*100/activityTotal))
        test = 0
    }
    
    //kalau misalkan perlu, di sini add function percentage
    
}

struct ActivitiesDataView: View {
    @StateObject var activity: ActivityData
    var body: some View {
        ScrollView{
            ForEach(Array(activity.activity)){ activity in
                
                CardView(viewModel: self.activity, activity: self.$activity.activity[self.activity.activity.firstIndex(of: activity)!])
                
                Divider().frame(width: 300)
            }
        }
    }
}

struct ActivitiesDataView_Previews: PreviewProvider {
        static var previews: some View {
            ActivitiesDataView(activity: ActivityData())
        }
}
