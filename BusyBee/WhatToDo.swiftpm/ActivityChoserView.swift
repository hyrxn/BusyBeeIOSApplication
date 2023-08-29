//
//  DropdownView.swift
//  StartwithSwiftUI
//
//  Created by Felix Leon on 31/03/23.
//

import SwiftUI

struct ActivityChoserView: View {
    let activities = ["Activities", "Cycling", "Drawing", "Jogging", "Reading Book", "Do Homework", "Study", "Brush Teeth"]
    @State private var selectedActivity = "Select your activity"
    @State private var isExpanded: Bool = false

    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .frame(width: 270, height: 40)
                    .foregroundColor(.white)
                    .shadow(radius: 2)
                HStack(spacing: 20) {
//                    Spacer()
                    Text(selectedActivity)
                        .foregroundColor(selectedActivity == "Select your activity" ? .gray : .black)
                    Image(systemName: "chevron.down")
                        .foregroundColor(.black)
//                        .padding(.leading, 4)
//                    Spacer()
                }
                .padding(.horizontal, 16)
                .onTapGesture {
                    isExpanded.toggle()
                }
            }
            if isExpanded {
                Picker("", selection: $selectedActivity) {
                    ForEach(activities, id: \.self) {
                        Text($0)
                    }
                }
                .pickerStyle(WheelPickerStyle())
                .frame(width: 300, height: 150)
                .background(Color.white)
                .cornerRadius(10)
                .shadow(radius: 2)
                .offset(y: 4.37) // adjust the offset as needed to align the menu with the rectangle
            }
        }
//        .animation(.spring())
    }
}

struct ActivityChoserView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityChoserView()
    }
}
