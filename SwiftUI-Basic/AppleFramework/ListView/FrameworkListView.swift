//
//  FrameworkListView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct FrameworkListView: View {
    @StateObject var vm = FrameworkListViewModel()
    
    let layout: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
//        GridItem(.fixed(30)),
//        GridItem(.adaptive(minimum: 40)),
    ]
    
    var body: some View {
        
        // Grid 만들기
        // - UIKit : UICollectionView
        //   - Data, Presentaion, Layout
        // - SwiftUI : LazyVGrid, LazyHGrid
        //   - ✅ Data, ✅ Presentaion, ✅ Layout
        
        NavigationView {
            ScrollView {
                LazyVGrid(columns: layout) {
                    ForEach($vm.list) { $item in
                        FrameworkCell(framework: $item)
                            .onTapGesture {
                                vm.isShowingDetail = true
                                vm.selectedItem = item
                            }
                    }
                }
                .padding([.top, .leading, .trailing], 16.0)
            }
            .navigationTitle("☀️ Apple Framework")
        }
        .sheet(isPresented: $vm.isShowingDetail) {
            let vm = FrameworkDetailViewModel(framework: vm.selectedItem!)
            FrameworkDetailView(viewModel: vm)
        }
//        .fullScreenCover(isPresented: $vm.isShowingDetail) {
//            let vm = FrameworkDetailViewModel(framework: vm.selectedItem!)
//            FrameworkDetailView(viewModel: vm)
//        }
    }
}

struct FrameworkListView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkListView()
    }
}
