//
//  FruitRowView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct FruitRowView: View {
    //Mark : -  PROPERTIES
    @State var fruit : Fruit
    var body: some View {
        HStack{
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80,height: 80,alignment: .center)
                .shadow(color: Color(red:0,green: 0,blue: 0,opacity: 0.3), radius: 3,x:2,y:2)
                .background(
                    LinearGradient(
                        gradient: Gradient(
                            colors: fruit.gradientColors),
                        startPoint: .top,
                        endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading,spacing: 5, content: {
                Text(fruit.title)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(Color.secondary)
            })
            
        }//:HSTACK
    }
}

#Preview {
    FruitRowView(fruit: fruitData[1])
        .previewLayout(.sizeThatFits)
}
