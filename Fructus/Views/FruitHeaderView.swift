//
//  SwiftHeaderView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK :- PROPERTIES
    @State private var isAnimatingImage: Bool = false
    var fruit:Fruit
    // MARK : - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color:Color(red:0,green:0,blue:0,opacity: 0.15),
                        radius: 8,x:6,y:6)
                .padding(.vertical,20)
                .scaleEffect(isAnimatingImage ? 1.0 : 0.6)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear{
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimatingImage = true
            }
        }
    }
}

// MARK : - PREVIEW
#Preview {
    FruitHeaderView(fruit: fruitData[0])
        .previewLayout(.fixed(width: 375, height: 440))
}
