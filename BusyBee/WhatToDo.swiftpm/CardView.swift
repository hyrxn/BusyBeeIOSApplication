//
//  CardView.swift
//  BusyBee
//
//  Created by Felix Leon on 15/07/23.
//

import SwiftUI

struct CardView: View {
//    @ObservedObject var viewModel = RoutineViewModel()
    
    @ObservedObject var viewModel: ActivityData
    @Binding var activity: Activity
    
    var body: some View {
        
        //        VStack{
        //            Button("Add Routine"){
        //                let routine1 = Routine(video: "youtube thumbnail", workoutName: "Bodyweight Squats", workoutDesc: "Legs (quadriceps, hamstrings, glutes)", rep: 2, calories: 50)
        //                viewModel.addRoutine(routine1)
        //            }
        //            ForEach(Array(viewModel.routineList), id: \.self){ routine in
        //                Text("\(routine.workoutName)")
        //            }
        //        }
        
        
        
        HStack {
            
            VStack(alignment: .leading) {
                Text("\(activity.activityName)")
                    .font(.headline)
                    .foregroundColor(.black)
                Text("\(activity.duration)")
                    .font(.caption)
                    .foregroundColor(.gray)
                   
            }
            
            Spacer()
            
            Button(action: {
                activity.isChecked.toggle()
                    viewModel.countPercentage()
            }) {
                Image(systemName: activity.isChecked ? "checkmark.circle.fill" : "checkmark.circle")
                    .resizable().frame(width: 18, height: 18)
                    .foregroundColor(activity.isChecked ? .orange : .black)
                    .padding(.leading,8)
            }
        }
        .padding(.horizontal, 48)
        .background(Color.white)
        .cornerRadius(10)
        .frame(height: 97)
        //                .shadow(radius: 5)
    }
}

struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView(viewModel: ActivityData(),
                 activity: .constant(Activity(
            activityName: "", duration: ""))
        )
    }
}
