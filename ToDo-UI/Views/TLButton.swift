//
//  TLButton.swift
//  ToDo-UI
//
//  Created by FURKAN AYAZ on 12.01.2025.
//

import SwiftUI

struct TLButton: View {
    var text: String = ""
    var buttonColor: Color = .blue
    var textColor: Color = .white
    let action: () -> Void
    
    var body: some View {
        Button {
            action()
        } label: {
            ZStack {
                RoundedRectangle(cornerRadius: 10).foregroundStyle(buttonColor)
                Text(text).foregroundStyle(textColor).bold()
            }
        }.padding()
    }
}

#Preview {
    TLButton(text: "TLButton", action: {
        //action invoked.
    })
}
