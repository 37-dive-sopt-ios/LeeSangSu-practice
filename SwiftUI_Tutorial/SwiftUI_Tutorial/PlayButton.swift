//
//  PlayButton.swift
//  SwiftUI_Tutorial
//
//  Created by 이상수 on 11/22/25.
//

import SwiftUI

struct PlayButton: View {
    @Binding var isPlaying: Bool

    var body: some View {
        Button(isPlaying ? "일시정지" : "재생") {
            isPlaying
                .toggle()
        }
    }
}

struct PlayerView: View {
    @State private var isPlaying: Bool = false

    var body: some View {
        VStack {
            Text("ㅎㅇ")
                .foregroundStyle(isPlaying ? .primary : .secondary)
                
            PlayButton(isPlaying: $isPlaying)
        }
    }
}

#Preview {
    PlayerView()
}
