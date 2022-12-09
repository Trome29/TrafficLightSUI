//
//  ContentView.swift
//  TrafficLightSUI
//
//  Created by Roman on 09.12.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            VStack {
                LightCircleView(color: .red)
                LightCircleView(color: .yellow)
                LightCircleView(color: .green)
                Spacer()
                Button(action: {}) {
                    Text("START")
                        .font(.largeTitle)
                        .tint(.white)
                        
                }
                .frame(width: 200, height: 50)
                .background(Color.blue)
                .clipShape(Capsule())
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
