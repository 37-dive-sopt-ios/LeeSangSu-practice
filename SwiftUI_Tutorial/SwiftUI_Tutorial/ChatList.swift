//
//  ChatList.swift
//  SwiftUI_Tutorial
//
//  Created by 이상수 on 11/22/25.
//

import SwiftUI

struct ChatList: View {
    let chatRooms: [ChatRoomModel]

    var body: some View {
        List(chatRooms) { chatRoom in
            ContentView(chatRoom: chatRoom)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.visible)
        }
        .listStyle(.plain)
    }
}

#Preview {
    ChatList(chatRooms: ChatRoomModel.mockData)
}
