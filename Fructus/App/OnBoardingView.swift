//
//  OnBoardingView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct OnBoardingView: View {
    // MARK : - PROPERTIES
    var fruits:[Fruit] = fruitData
    
    //MARK : - BODY
    var body: some View {
        TabView{
            ForEach(fruits[0...5]){item in
                FruitCardView(fruit:item)
            }//:Loop
           
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

//MARK : - PREVIEW
#Preview {
    OnBoardingView(fruits: fruitData)
}
