//
//  DisplayView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/24/23.
//

import SwiftUI

struct DisplayView: View {
    
    public var title: String = ""
    public var items: [Recipe]
    
    var threeColumnGrid = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView{
            Text(title)
                .font(.system(.title2))
                .fontWeight(.heavy)
                .padding(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
            GeometryReader{ geometry in
                LazyVGrid(columns: threeColumnGrid){
                    ForEach(items) { recipe in
                        NavigationLink(destination: RecipeView(recipe: recipe)){
                            AsyncImage(url: URL(string: recipe.imgUrl)){
                                    image in image.resizable()
                                } placeholder: {ProgressView()}
                                .scaledToFill()
                                .frame(width: geometry.size.width/3.5, height: geometry.size.width/3.5)
                                .addBorder(Color.gray, width: 2, cornerRadius: 12)
                        }
                    }
                }
                .padding([.leading, .trailing])
            }
        }
        .navigationTitle("")
        .frame(alignment: .leading)
    }
}

struct DisplayView_Previews: PreviewProvider {
    static var previews: some View {
        DisplayView(
            items: itemList
        )
    }
}
