//
//  ContentView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct ContentView: View {
//    @StateObject var userProfile = UserProfileSettings()

    var body: some View {
//        FirstView().environmentObject(userProfile)
        FrameworkListView()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
