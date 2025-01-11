//
//  HeaderView.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 11.01.2025.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        VStack {
            ZStack {
                RoundedRectangle(cornerRadius: 0).foregroundStyle(.pink).rotationEffect(Angle(degrees: 15))
                
                VStack {
                    Text("To Do List")
                        .font(.system(size: 50))
                        .foregroundStyle(.white)
                        .bold()
                    
                    Text("Get Things Done")
                        .font(.system(size: 30))
                        .foregroundStyle(.white)
                }.padding(.top, 45)
            }.frame(width: UIScreen.main.bounds.width * 3, height: 300).offset(y: -100).background()
        }
    }
}

#Preview {
    HeaderView()
}
