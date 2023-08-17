//
//  PlayerView.swift
//  SwiftUI-Basic
//
//  Created by 최지연/클라이언트 on 2023/08/17.
//

import SwiftUI

struct PlayerView: View {
    let episode: Episode
    // 이 값이 바뀌면 유아이를 다시 렌더링 한다.
    @State private var isPlaying: Bool = false // 자식뷰에 보낼 데이터
    
    var body: some View {
        VStack(spacing: 20) {
            Text(episode.title)
                .font(.largeTitle)
            Text(episode.showTitle)
                .font(.title3)
                .foregroundColor(.gray)
            
            PlayButton(isPlaying: $isPlaying) // 자식뷰에 보낼때는 $ 붙여줌
            PlayingStatusView(isPlaying: $isPlaying)
        }
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView(episode: Episode.list[0])
    }
}
