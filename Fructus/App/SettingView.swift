//
//  SettingView.swift
//  Fructus
//
//  Created by Nickelfox on 17/01/24.
//

import SwiftUI

struct SettingView: View {
    @Environment(\.presentationMode) var presentationMode
    @AppStorage("isOnboarding") var isOnboarding :Bool = false
    var body: some View {
        NavigationView{
            ScrollView(.vertical,showsIndicators: false){
                VStack(spacing:20){
                    // MARK -  SECTION 1
                    GroupBox(label: SettingLabelView(labelText: "Fruits", labelImage: "info.circle")){
                        Divider().padding(.vertical,4)
                        HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/,spacing: 10){
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, sodium, and calories. None have cholesterol. Fruits are sources of many essential nnutrients, including potassium, dietary fiber, vitamins, and much more.")
                                .font(.footnote)
                        }
                    }
                    // MARK - SECTION 2
                    GroupBox(label: SettingLabelView(labelText: "Customization", labelImage: "paintbrush")){
                        Divider().padding(.vertical,4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical,8)
                            .frame(minHeight:60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                        
                        Toggle(isOn: $isOnboarding, label: {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundColor(Color.secondary)
                            }
                        })
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                            .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                    }
                    
                    // MARK - SECTION 3
                    GroupBox(label: SettingLabelView(labelText: "Application", labelImage: "apps.iphone")){
                      SettingRowView(name: "Developer",content: "John / Jane")
                        SettingRowView(name: "Designer",content: "Robert Petras")
                        SettingRowView(name: "Compatibility",content: "iOS 14")
                        SettingRowView(name: "Website",linkLabel: "SwiftUI Masterclass",linkDestination:"swiftuimasterclass.com")
                        SettingRowView(name: "Website",linkLabel: "@RobertPetras",linkDestination:"twitter.com/robertpetras")
                        SettingRowView(name: "SwiftUI",content: "2.0")
                        SettingRowView(name: "Version",content: "1.1.0")
                    }
                    
                }//:VSTACK
                .navigationBarTitle(Text("Settings"),displayMode: .large)
                .navigationBarItems(
                    trailing:Button(
                        action:{ presentationMode.wrappedValue.dismiss()},
                        label: {
                            Image(systemName: "xmark")
                        }))
                .padding()
            }
        }//: NAVIGATION VIEW
    }
}

#Preview {
    SettingView()
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}
