//
//  ButtonView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        Button {
            print("button tapped")
        } label: {
            Text("Click Me")
        }
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}
