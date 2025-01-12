//
//  HeaderView.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import SwiftUI

struct HeaderView: View {
    let title, subTitle: String
    let angle: Double
    let bgColor: Color
    
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0).foregroundStyle(bgColor).rotationEffect(Angle(degrees: angle))
                
                VStack {
                    Text(title)
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .bold()
                    
                    Text(subTitle)
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                }.padding(.top, 45)
            }.frame(width: UIScreen.main.bounds.width * 3, height: 350).offset(y: -150).background()
        }
    }
}

#Preview {
    HeaderView(title: "Preview Title", subTitle: "Preview SubTitle", angle: 15, bgColor: .pink)
}
