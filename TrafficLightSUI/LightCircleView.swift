//
//  LightCircleView.swift
//  TrafficLightSUI
//
//  Created by Roman on 09.12.2022.
//

import SwiftUI

struct LightCircleView: View {
    let color: Color
    var body: some View {
        Circle()
            .frame(width: 150, height: 150)
            .foregroundColor(color.opacity(0.5))
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
            .shadow(radius: 20)
    }
}

struct LightCircleView_Previews: PreviewProvider {
    static var previews: some View {
        LightCircleView(color: .red)
    }
}
