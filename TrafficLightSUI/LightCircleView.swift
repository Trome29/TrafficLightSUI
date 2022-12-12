//
//  LightCircleView.swift
//  TrafficLightSUI
//
//  Created by Roman on 09.12.2022.
//

import SwiftUI

struct LightCircleView: View {
    let color: Color
    let opacity: Double
    
    var body: some View {
        Circle()
            .frame(width: 100)
            .foregroundColor(color)
            .opacity(opacity)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct LightCircleView_Previews: PreviewProvider {
    static var previews: some View {
        LightCircleView(color: .red, opacity: 1)
    }
}
