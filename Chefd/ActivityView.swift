//
//  ActivityView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/23/23.
//

import SwiftUI

struct ActivityList: View {
    var body: some View {
        Text("No activity")
    }
}

struct ActivityView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        NavigationStack{
            VStack(spacing: 6.0) {
                Text("Activity")
                    .fontWeight(.bold)
                    .font(.system(.title2))
                Picker("", selection: $selectedTab) {
                    Text("Friends")
                        .tag(0)
                    Text("You")
                        .tag(1)
                    Text("Incoming")
                        .tag(2)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding([.leading, .trailing])
                switch(selectedTab) {
                case 0: ActivityList()
                    //fetch activity list here and display
                case 1: ActivityList()
                case 2: ActivityList()
                default: ActivityList()
                }
                Spacer()
            }
        }
    }
}

struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        ActivityView()
    }
}
