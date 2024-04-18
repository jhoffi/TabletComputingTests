//
//  InputView.swift
//  TabletComputingTests
//
//  Created by Jonas Hoffmann on 17.04.24.
//

import SwiftUI

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

#Preview {
    InputView(counter: Binding.constant(0))
}
