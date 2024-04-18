//
//  Addierer.swift
//  TabletComputingTests
//
//  Created by Jonas Hoffmann on 17.04.24.
//

import SwiftUI

struct Addierer: View {
    @State private var globalCounter = 0
    @State private var op1 = 0
    @State private var op2 = 0
    
    var body: some View {
        VStack (spacing: 40) {
            Text(String(globalCounter))
            HStack (spacing: 30) {
                InputView(counter: $op1)
                InputView(counter: $op2)
            }.onChange(of: op1) {
                globalCounter = op1 + op2
            }.onChange(of: op2) {
                globalCounter = op1 + op2
            }
        }
    }
}

#Preview {
    Addierer()
}

struct InputView: View {
    @Binding var counter: Int
    
    var body: some View {
        VStack (spacing: 15) {
            ZStack {
                Circle()
                    .stroke(.black, lineWidth: 2)
                    .fill(.white)
                    .frame(height: 70)
                Text(String(counter))
            }
            
            HStack {
                Button(action: {
                    counter += 1
                }) {
                    Text("+")
                        .foregroundStyle(Color(UIColor.black))
                }.padding(5)
                    .border(Color(UIColor.black))
                
                Button(action: {
                    counter -= 1
                }) {
                    Text("-")
                        .foregroundStyle(Color(UIColor.black))
                }.padding(5)
                    .border(Color(UIColor.black))
            }
        }
    }
}
