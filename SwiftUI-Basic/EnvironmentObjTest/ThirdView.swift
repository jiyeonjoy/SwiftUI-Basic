//
//  ThirdView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/18.
//

import SwiftUI

struct ThirdView: View {
    @EnvironmentObject var userProfile: UserProfileSettings

    var body: some View {
        VStack(spacing: 30) {
            Text("Current Age: \(userProfile.age)")
            
            Text("Third View")

            Button {
                userProfile.haveBirthDayParty()
            } label: {
                Text("Having Birthday Party")
            }
        }
        .navigationTitle("Third View")
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView().environmentObject(UserProfileSettings())

    }
}
