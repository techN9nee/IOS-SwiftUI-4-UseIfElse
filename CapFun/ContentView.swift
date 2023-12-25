//
//  ContentView.swift
//  CapFun
//
//  Created by Aytek Özgül on 25.12.2023.
//

import SwiftUI


struct ContentView: View {
    @State var userText = ""
    @State var capMode = 1

    var body: some View {
        VStack{
            Spacer()
            Button(action:{
                
                
                    let pasteboard = UIPasteboard.general
                if capMode == 1 {
                    pasteboard.string = userText.uppercased()
                }
                if capMode == 2 {
                    pasteboard.string = userText.capitalized
                }
                if capMode == 3 {
                    pasteboard.string = userText.lowercased()
                }
                
            }){
                CustomButtonView(title: "Coppy", color: .black)
            }
            HStack{
                Button(action: {
                    capMode = 1
                }){
                    CustomButtonView(title: "All Caps", color: .green)
                }
                Button(action:{
                    capMode = 2
                }){
                    CustomButtonView(title: "First Letter", color: .yellow)
                }
                Button(action:{
                    capMode = 3
                }){
                    CustomButtonView(title: "Lowercase", color: .red)
                }
                
            }
            .padding()
            Spacer()
            TextField("Enter text here : ",text: $userText)
                .padding()
            
        }
            
    }
}

#Preview {
    ContentView()
}
