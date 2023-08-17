//
//  TextView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct TextView: View {
    var body: some View {
        Text("SwiftUI")
            .font(.system(size: 40, weight: .bold, design: .default))
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        TextView()
    }
}
