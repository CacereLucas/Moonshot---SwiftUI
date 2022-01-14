//
//  Color-Theme.swift
//  Moonshot
//
//  Created by Lucas on 13/1/22.
//

import Foundation
import SwiftUI

//Custom color-theme
extension ShapeStyle where Self == Color {
    static var darkBackground: Color {
        Color(red: 0.1, green: 0.1, blue: 0.2)
    }
    
    static var lightBackground: Color {
        Color(red: 0.2, green: 0.2, blue: 0.3)
    }
}


//Custom Shapes
struct CustomRectangle: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}
