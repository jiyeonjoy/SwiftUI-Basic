//
//  StockRankViewModel.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/18.
//

import Foundation

final class StockRankViewModel: ObservableObject {
    @Published var list = StockModel.list
    
    var numOfFavorites: Int {
        let favoriteStocks = list.filter { $0.isFavorite }
        return favoriteStocks.count
    }
}
