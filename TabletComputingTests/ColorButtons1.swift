//
//  ColorButtons1.swift
//  FirstDemo
//
//  Created by Jonas Hoffmann on 11.04.24.
//

import SwiftUI

struct ColorButtons1: View {
    @State private var isLarge = false
    @State private var clickCount = 0
    
    var body: some View {
        Button(action: {
            isLarge.toggle()
            clickCount += 1
        }) {
            ZStack {
                Image(systemName: "stop.circle.fill")
                    .font(.system(
                        size: isLarge ? 200 : 100
                    ))
                    .padding()
                    .foregroundColor(
                        isLarge ? .green : .red
                    )
                Text("\(clickCount)")
            }
        }
    }
}

#Preview {
    ColorButtons1()
}
