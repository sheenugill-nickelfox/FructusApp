//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct FruitDetailView: View {
    // MARK : - PROPERTIES
     
    var fruit:Fruit
    // MARK : - BODY
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    
                    VStack(alignment: .leading,spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADLINE
                       
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        //SUBHEADLINE
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        //LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                        
                    }//:VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640,alignment: .center)
                }//:VStack
                .navigationBarTitle(fruit.title,displayMode: .inline)
                .navigationBarHidden(true)
            }//:ScrollView
            .edgesIgnoringSafeArea(.top)
        }//:NavigationView
    }
}

// MARK : - PREVIEW
#Preview {
    FruitDetailView(fruit: fruitData[0])
}
