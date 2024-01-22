//
//  DaysOfWeekView.swift
//  KidsEatFree
//
//  Created by Luke J. Sivulka on 12/18/23.
//

import SwiftUI

struct DaysOfWeekView: View {
    let daysOfWeek = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]

    var body: some View {
        NavigationView {
            List {
                ForEach(daysOfWeek, id: \.self) { day in
                    NavigationLink(destination: DayView(day: day)) {
                        Text(day)
                    }
                }
            }
            .navigationTitle("Days of the Week")
        }
    }
}

struct DayView: View {
    let day: String
    
    var body: some View {
        Text("This is \(day)'s View")
            .navigationTitle(day)
    }
}

struct DaysOfWeekView_Previews: PreviewProvider {
    static var previews: some View {
        DaysOfWeekView()
    }
}
