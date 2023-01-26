//
//  ListView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/24/23.
//

import SwiftUI

//struct ListItem: Identifiable{
//    var id = UUID()
//    var text: String
//    var view: AnyView
//}

struct ListView: View {
    public var title: String = ""
    public var list: [ListItem]
    var body: some View {
        List {
            Section (header:
                        Text(title)
                            .fontWeight(.heavy)
                            .font(.system(.title3))){
                ForEach(list) { item in
                    NavigationLink(destination: item.view){
                        Text(item.text)
                    }
                } 
            }
        }
        .listStyle(.plain)
        .navigationTitle(title)
        .toolbar(.hidden)
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(
            title: "Title",
            list: [
                ListItem(text: "home", view: AnyView(HomeView()))
            ]
        )
    }
}
