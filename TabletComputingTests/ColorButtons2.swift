//
//  ColorButtons1.swift
//  FirstDemo
//
//  Created by Jonas Hoffmann on 11.04.24.
//

import SwiftUI

struct ColorButtons2: View {
    @State private var clickCount = 0
    
    var body: some View {
        VStack {
            Button(action: { clickCount += 1 }) {
                ZStack {
                    Circle()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.red)
                    Text(String(clickCount))
                }
            }
            Button(action: { clickCount += 1 }) {
                ZStack {
                    Circle()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.yellow)
                    Text(String(clickCount))
                }
            }
            Button(action: { clickCount += 1 }) {
                ZStack {
                    Circle()
                        .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                        .foregroundColor(.green)
                    Text(String(clickCount))
                }
            }
        }
    }
}

#Preview {
    ColorButtons2()
}
