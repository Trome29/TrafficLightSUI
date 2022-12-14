//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Roman on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var colorCounter = 0
    @State private var buttonName = "START"
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                LightCircleView(color: .red, opacity: redOpacity)
                LightCircleView(color: .yellow, opacity: yellowOpacity)
                    .padding()
                LightCircleView(color: .green, opacity: greenOpacity)
                
                Spacer()

                StartButtonView(title: buttonName) {
                    turnTrafficLight()
                }
            }
            .padding()
        }
    }
    
    private func turnTrafficLight() {
        let lightIsOn: CGFloat = 1
        let lightIsOff: CGFloat = 0.3
        colorCounter = colorCounter >= 3 ? 0 : colorCounter
        buttonName = "NEXT"
        switch colorCounter {
        case 0:
            greenOpacity = lightIsOff
            redOpacity = lightIsOn
            colorCounter += 1
        case 1:
            redOpacity = lightIsOff
            yellowOpacity = lightIsOn
            colorCounter += 1
        default:
            greenOpacity = lightIsOn
            yellowOpacity = lightIsOff
            colorCounter = 0
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
