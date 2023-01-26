//
//  BrowseView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/25/23.
//

import SwiftUI

var browseByList = [
    ListItem(text: "country", view: AnyView(CountryView()))
]

struct BrowseView: View {    var body: some View {
        List {
            Section (header:
                        Text("Browse By")
                            .fontWeight(.heavy)
                            .font(.system(.title3))){
                ForEach(browseByList) { item in
                    NavigationLink(destination: item.view){
                        Text(item.text)
                    }
                }
            }
        }
        .listStyle(.plain)
        .navigationTitle("Browse")
        .toolbar(.hidden)
    }
}

struct BrowseView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseView()
    }
}
