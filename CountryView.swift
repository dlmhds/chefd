//
//  CountryView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/25/23.
//

import SwiftUI

var countryList = [
    ListItem(text: "China",
             view: AnyView(DisplayView(title: "China", items: []))),
    ListItem(text: "Taiwan",
             view: AnyView(DisplayView(title: "Taiwan", items: []))),
    ListItem(text: "Vietnam",
             view: AnyView(DisplayView(title: "Vietnam", items: []))),
    ListItem(text: "Japan",
             view: AnyView(DisplayView(title: "Japan", items: []))),
    ListItem(text: "Korea",
             view: AnyView(DisplayView(title: "Korea", items: []))),
    ListItem(text: "United States",
             view: AnyView(DisplayView(title: "United States", items: []))),
    ListItem(text: "France",
             view: AnyView(DisplayView(title: "France", items: []))),
    ListItem(text: "India",
             view: AnyView(DisplayView(title: "India", items: []))),
    ListItem(text: "Mexico",
             view: AnyView(DisplayView(title: "Mexico", items: []))),
    ListItem(text: "China",
             view: AnyView(DisplayView(title: "China", items: []))),
    ListItem(text: "Taiwan",
             view: AnyView(DisplayView(title: "Taiwan", items: []))),
    ListItem(text: "Vietnam",
             view: AnyView(DisplayView(title: "Vietnam", items: []))),
    ListItem(text: "Japan",
             view: AnyView(DisplayView(title: "Japan", items: []))),
    ListItem(text: "Korea",
             view: AnyView(DisplayView(title: "Korea", items: []))),
    ListItem(text: "United States",
             view: AnyView(DisplayView(title: "United States", items: []))),
    ListItem(text: "France",
             view: AnyView(DisplayView(title: "France", items: []))),
    ListItem(text: "India",
             view: AnyView(DisplayView(title: "India", items: []))),
    ListItem(text: "Mexico",
             view: AnyView(DisplayView(title: "Mexico", items: [])))
]

struct CountryView: View {
    //public var title: String = ""
    //public var list: [ListItem]
    @State private var searchText: String = ""
    var body: some View {
        ScrollViewReader { proxy in
            List{
                SearchBar(text: $searchText)
                    .frame(maxWidth: .infinity)
                ForEach(countryList.filter({searchText.isEmpty ? true : $0.text.contains(searchText) })){item in
                    NavigationLink(destination: item.view){
                        Text(item.text)
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Countries")
            .navigationBarTitleDisplayMode(.inline)
//            .onAppear{
//                proxy.scrollTo(countryList[10].id)
//            }
        }
    }
}

struct CountryView_Previews: PreviewProvider {
    static var previews: some View {
        CountryView()
    }
}
