//
//  ContentView.swift
//  CustomOperatorsInSwiftUI
//
//  Created by admin on 11/3/23.
//

import SwiftUI

struct ContentView: View {
    @State private var value: Double = 0
    
    var body: some View {
        Text("Custom Operator")
            .onAppear() {
                value = 5 +/ 5
                value = 5 ++/ 5
                value = 5 ^^^ 5
            }
    }
}

infix operator +/
infix operator ++/
infix operator ^^^

extension FloatingPoint {
    
    static func +/ (lhs: Self, rhs: Self) -> Self {
        (lhs + rhs) / 2
    }
    
    static func ++/ (lhs: Self, rhs: Self) -> Self {
        (lhs + lhs) / rhs
    }
    
    static func ^^^ (lhs: Self, rhs: Self) -> Self {
        (lhs + lhs) * rhs
    }
}

#Preview {
    ContentView()
}
