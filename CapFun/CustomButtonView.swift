//
//  CustomButtonView.swift
//  CapFun
//
//  Created by Aytek Özgül on 25.12.2023.
//

import SwiftUI

struct CustomButtonView: View {
    
    var title : String
    var color : Color
    
    var body: some View {
        HStack{
            Text(title)
                .padding(12)
                .bold()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .font(.body)
                .background(color)
                .foregroundStyle(.white)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
            
        }
    }
}

#Preview {
    CustomButtonView(title: "Tap Me", color: .green)
}
