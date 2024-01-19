//
//  SettingLabelView.swift
//  Fructus
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct SettingLabelView: View {
    @State var labelText:String
    @State var labelImage:String
    var body: some View {
        HStack {
            Text(labelText.uppercased()).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

#Preview {
    SettingLabelView(labelText: "Fruits", labelImage: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
