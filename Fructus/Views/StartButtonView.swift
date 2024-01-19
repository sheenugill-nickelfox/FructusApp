//
//  StartButtonView.swift
//  Fructus
//
//  Created by Nickelfox on 16/01/24.
//

import SwiftUI

struct StartButtonView: View {
    //MARK : - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding :Bool?
    
    //MARK : - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }){
            HStack(spacing:8){
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,10)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25))
        }
        .accentColor(.white)
    }
}

//MARK : - PREVIEW
#Preview {
    StartButtonView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
        .previewLayout(.sizeThatFits)
}
