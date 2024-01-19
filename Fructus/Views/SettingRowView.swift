//
//  SettingRowView.swift
//  Fructus
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct SettingRowView: View {
    var name:String
    var content:String? = nil
    var linkLabel:String? = nil
    var linkDestination:String? = nil
    var body: some View {
        VStack {
            Divider().padding(.vertical,4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content ?? "")
                } else if(linkLabel != nil && linkDestination != nil){
                    Link(linkLabel ?? "",destination: URL(string: "https://\(linkDestination!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingRowView(name: "Developer", content: "John/Jane")
        .previewLayout(.fixed(width: 375, height: 60))
        .padding()
}
