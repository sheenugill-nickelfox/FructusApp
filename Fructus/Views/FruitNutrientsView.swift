//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    // MARK : - PROPERTIES
    var fruit:Fruit
    let nutrients : [String] = ["Energy","Sugar","Fat","Protein","vitamin","Minerals"]
    
    // MARK : - BODY
    var body: some View {
        GroupBox(){
            DisclosureGroup("Nutritional value pern 100g"){
                ForEach(0 ..< nutrients.count,id:\.self) { item in
                    Divider().padding(.vertical,2)
                    HStack{
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                        
                    }
                }
            }
        }//: Box
    }
}

// MARK :- PREVIEW
#Preview {
    FruitNutrientsView(fruit: fruitData[0])
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
