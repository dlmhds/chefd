//
//  RecipeView.swift
//  Chefd
//
//  Created by Malachi Wong on 1/24/23.
//

import SwiftUI

struct Recipe: Identifiable {
    var id = UUID()
    var name: String
    var imgUrl: String
    //var ingredientList: [Ingredient]
    var estimatedTime: Int = 0
    var steps: [String] = ["none"]
}

struct RecipeView: View {
    public var recipe: Recipe
    var body: some View {
        GeometryReader{ geometry in
            ScrollView{
                AsyncImage(url: URL(string: recipe.imgUrl)){
                    image in image.resizable()
                } placeholder: {ProgressView()}
                .scaledToFill()
                .frame(width: geometry.size.width, height: geometry.size.height/3)
                .mask(LinearGradient(gradient: Gradient(stops: [
                    .init(color: .black, location: 0),
                    .init(color: .clear, location: 1),
                    .init(color: .black, location: 1),
                    .init(color: .clear, location: 1)
                ]), startPoint: .top, endPoint: .bottom))
                
                .overlay(alignment: .bottomLeading){
                    Text(recipe.name)
                        .font(.system(.largeTitle))
                        .fontWeight(.bold)
                        .scaledToFit()
                        .padding(.leading)
                }
            }
        }.ignoresSafeArea() //temp fix to make it look nice
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(recipe: eggfriedrice)
    }
}
