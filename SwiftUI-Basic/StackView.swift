//
//  StackView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            ImageView()
            ButtonView()
            TextView()
            
            Spacer()
            
            HStack {
                ImageView()
                ButtonView()
                TextView()
            }.background(.purple)
            
            Spacer()

            ZStack {
                ImageView()
                ButtonView()
                TextView()
            }
            .background(.blue)
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}
