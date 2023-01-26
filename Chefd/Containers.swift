//
//  Containers.swift
//  Chefd
//
//  Created by Malachi Wong on 1/24/23.
//

import Foundation
import SwiftUI

struct Ingredient: Identifiable {
    var id = UUID()
    var name: String
}


struct ListItem: Identifiable{
    var id = UUID()
    var text: String
    var view: AnyView
}

var eggfriedrice = Recipe(
    name: "egg fried rice",
    imgUrl: "https://th.bing.com/th/id/OIP.1Ok3XDQU559dTu5vtFltqgHaFC?pid=ImgDet&rs=1"
)

var donut = Recipe(
    name: "donut",
    imgUrl: "https://th.bing.com/th/id/OIP.sZVNpvHaCpmTkHdXN0xlKwHaHa?pid=ImgDet&rs=1"
)
var steak = Recipe(
    name: "steak",
    imgUrl: "https://img2.mashed.com/img/uploads/2016/09/bestcutsofsteakforanybudget.jpg"
)
var spaghetti = Recipe(
    name: "spaghetti",
    imgUrl: "https://th.bing.com/th/id/OIP.9SOYJIkmZmaU-ynHd0BIzAHaI9?pid=ImgDet&rs=1"
)

var itemList = [
    eggfriedrice,
    donut,
    steak,
    spaghetti
]





extension View {
    public func addBorder<S>(_ content: S, width: CGFloat = 1, cornerRadius: CGFloat) -> some View where S : ShapeStyle {
        let roundedRect = RoundedRectangle(cornerRadius: cornerRadius)
        return clipShape(roundedRect)
             .overlay(roundedRect.strokeBorder(content, lineWidth: width))
    }
}
