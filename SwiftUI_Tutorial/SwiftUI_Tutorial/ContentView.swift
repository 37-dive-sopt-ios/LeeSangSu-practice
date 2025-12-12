//
//  ContentView.swift
//  SwiftUI_Tutorial
//
//  Created by 이상수 on 11/22/25.
//

import SwiftUI

struct ContentView: View {
    let chatRoom: ChatRoomModel

    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: "person")
                .resizable()
                .scaledToFit()
                .clipShape(Circle())
                .frame(width: 40, height: 40)
//            Circle()
//                .fill(.gray.opacity(0.2))
//                .frame(width: 40, height: 40)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(chatRoom.name)
                        .font(.headline)
                        .fontWeight(.bold)
                    Text(chatRoom.location)
                        .font(.subheadline)
                }
                Text(chatRoom.lastMessage)
                    .font(.subheadline)
            }
            Spacer()
            Rectangle()
                .fill(.red)
                .frame(width: 40, height: 40)
        }
        .padding(.horizontal)
        .padding(.vertical, 16)
    }
}
