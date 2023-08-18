//
//  StockDetailView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct StockDetailView: View {
    
    @ObservedObject var viewModel: StockRankViewModel
    @Binding var stock: StockModel // binding을 써워야 state 데이터를 참조하는 것임. 안써주면 데이터 복사하는 것..데이터를 하나로 봐야되기 때문에 binding 써주는 게 좋음.
    
    var body: some View {
        VStack(spacing: 40) {
            Text("# of My Favorites: \(viewModel.numOfFavorites)")
                .font(.system(size: 20, weight: .bold, design: .default))
            Image(stock.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:120, height: 120)
            Text(stock.name)
                .font(.system(size: 30, weight: .bold))
            Text("\(stock.price) 원")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(stock.diff > 0 ? .red : .blue)
            Button {
                stock.isFavorite.toggle()
            } label: {
                Image(systemName: "heart.fill")
                    .resizable().renderingMode(.template)
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 80, height: 80)
                    .foregroundColor(stock.isFavorite ? .pink : .gray)
            }
        }
    }
}

struct StockDetailView_Previews: PreviewProvider {
    static var previews: some View {
        StockDetailView(
            viewModel: StockRankViewModel(),
            stock: .constant(StockModel.list[0]))
    }
}
