//
//  StockRankView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct StockRankView: View {
  
    @StateObject var vm = StockRankViewModel()
    
    var body: some View {
        NavigationView {
            List($vm.list) { $item in
                ZStack {
                    NavigationLink {
                        StockDetailView(viewModel: vm, stock: $item)
                    } label: {
                        EmptyView()
                    }
                    StockRankRow(stock: $item)
                }
                .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                .frame(height: 80)
            }
            .listStyle(.plain)
            .navigationTitle("Stock Rank")
        }
    }
}

struct StockRankView_Previews: PreviewProvider {
    static var previews: some View {
        StockRankView()
            .preferredColorScheme(.dark) // 프리뷰 볼 때 다크모드 세팅 
    }
}
