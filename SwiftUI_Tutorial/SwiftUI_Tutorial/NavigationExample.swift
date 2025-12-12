//
//  NavigationExample.swift
//  SwiftUI_Tutorial
//
//  Created by 이상수 on 11/29/25.
//

import SwiftUI

struct NavigationExample: View {
    var body: some View {
        NavigationStack {
            NavigationLink {
                DetailView()
            } label: {
                Label("wkw", systemImage: "folder")
            }
            
            NavigationLink {
                ColorDetail(color: .teal)
            } label: {
                Label("Work Folder", systemImage: "folder")
            }
            
            .navigationTitle("Colors")
            
        }
    }
}

struct DetailView: View {
    var body: some View {
        Text("Asdasd")
    }
}

struct ColorDetail: View {
    var color: Color

    var body: some View {
        color.navigationTitle(color.description)
    }
}

#Preview { NavigationExample() }
