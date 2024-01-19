//
//  ContentView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct ContentView: View {
    var fruits:[Fruit] = fruitData
    @State private var isSettingShowing : Bool = false
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) { fruit in
                    NavigationLink(
                        destination: FruitDetailView(fruit: fruit)){
                        FruitRowView(fruit: fruit)
                            .padding(.vertical,4)
                    }//:NavigationLink
                }//:Loop
            }//:List  
            .listStyle(.plain)
            .navigationTitle("Fruits")
            .navigationBarItems(trailing:
                                    Button(
                                        action: {
                                            isSettingShowing = true
                                        },
                                        label: {
               Image(systemName: "slider.horizontal.3")
            })
                                        .sheet(isPresented: $isSettingShowing, content: {
                                        SettingView()
                                        }))
        }//:Navigation
    
    }
}

#Preview {
    ContentView(fruits: fruitData)
       
}
