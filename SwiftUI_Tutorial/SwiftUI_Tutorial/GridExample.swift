//
//  GridExample.swift
//  SwiftUI_Tutorial
//
//  Created by 이상수 on 11/29/25.
//

import SwiftUI

struct GridExample: View {
    var body: some View {
        Grid(horizontalSpacing: 1, verticalSpacing: 1) {
            GridRow {
                Text("Row 1")
                    .padding(.trailing)
                ForEach(0..<2) { _ in
                    RoundedRectangle(cornerRadius: 4)
                        .fill(Color.red)
                        .frame(width: 40, height: 40)
                }
            }
            GridRow {
                Text("Row 2")
                    .padding(.trailing)
                ForEach(0..<5) { _ in
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color.green)
                }
            }
            GridRow {
                Text("Row 3")
                    .padding(.trailing)
                ForEach(0..<4) { _ in
                    RoundedRectangle(cornerRadius: 4)
                        .frame(width: 40, height: 40)
                        .foregroundStyle(Color.blue)
                }
            }
        }
    }
}

#Preview { GridExample() }
