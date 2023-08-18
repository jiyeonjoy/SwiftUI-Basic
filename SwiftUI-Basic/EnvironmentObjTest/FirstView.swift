//
//  FirstView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/18.
//

import SwiftUI

struct FirstView: View {
    
    @EnvironmentObject var userProfile: UserProfileSettings

    var body: some View {
        NavigationView {
            VStack(spacing: 30) {
                Text("Current Age: \(userProfile.age)")
                
                NavigationLink {
                    SecondView()
                } label: {
                    Text("Second View")
                }

                Button {
                    userProfile.haveBirthDayParty()
                } label: {
                    Text("Having Birthday Party")
                }
            }
            .navigationTitle("First View")
        }
    }
}

struct FirstView_Previews: PreviewProvider {
    static var previews: some View {
        FirstView().environmentObject(UserProfileSettings())
    }
}
