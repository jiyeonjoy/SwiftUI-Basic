//
//  UserProfileSettings.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/18.
//

import Foundation

final class UserProfileSettings: ObservableObject {
    
    @Published var name: String = ""
    @Published var age: Int = 0
    
    func haveBirthDayParty() {
        age += 1
    }
}
