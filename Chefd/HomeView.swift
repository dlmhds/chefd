//
//  HomeView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/23/23.
//

import SwiftUI

struct HomeView: View {
    @State private var selectedTab: Int = 0
    var body: some View {
        NavigationStack{
            VStack(spacing: 6.0) {
                Text("Chefd")
                    .fontWeight(.bold)
                    .font(.system(.title))
                Picker("", selection: $selectedTab) {
                    Text("Dishes")
                        .tag(0)
                    Text("Reviews")
                        .tag(1)
                    Text("Lists")
                        .tag(2)
                    Text("Journal")
                        .tag(3)
                }
                .pickerStyle(SegmentedPickerStyle())
                .padding([.leading, .trailing])
                switch(selectedTab) {
                case 0: DisplayView(title: "Popular", items: itemList) //fetch popular recipes here
                case 1: ReviewsView()
                case 2: ListsView()
                case 3: JournalView()
                default: PopularView()
                }
                Spacer()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
