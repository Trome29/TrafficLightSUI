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
            .frame(width: 120)
            .foregroundColor(color.opacity(opacity))
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}
