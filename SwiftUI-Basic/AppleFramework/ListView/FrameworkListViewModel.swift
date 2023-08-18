//
//  FrameworkListViewModel.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/18.
//

import Foundation

final class FrameworkListViewModel: ObservableObject {
    @Published var list: [AppleFramework] = AppleFramework.list
    @Published var isShowingDetail: Bool = false {
        didSet {
            print("--> isShowingDetail \(isShowingDetail)")
        }
    }
    @Published var selectedItem: AppleFramework?
}
