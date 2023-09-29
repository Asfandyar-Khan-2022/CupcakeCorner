//
//  Wave.swift
//  CupcakeCorner
//
//  Created by Mac User on 28/09/2023.
//

import SwiftUI

struct Wave: Shape {
    var strenth: Double
    var frequency: Double
    var phase: Double
    
    var animatableData: Double {
        get { phase }
        set { self.phase = newValue}
    }
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath()
        
        let width = Double(rect.width)
        let height = Double(rect.height)
        let midWidth = width / 2
        let midHeight = height / 2
        
        let wavelength = width / frequency
        
        path.move(to: CGPoint(x: 0, y: midHeight))
        
        for x in stride(from: 0, through: width, by: 1) {
            let relativeX = x / wavelength
            let sine = sin(relativeX + phase)
            let y = strenth * sine + midHeight
            path.addLine(to: CGPoint(x: x, y: y))
        }
        
        return Path(path.cgPath)
    }
    
}

struct WaveOnly: View {
    @State private var phase = 0.0
    
    var body: some View {
        VStack {
            Wave(strenth: 100, frequency: 10, phase: phase)
                .stroke(Color.white, lineWidth: 5)
            
        }
        .background(Color.blue)
        .edgesIgnoringSafeArea(.all)
        .onAppear {
            withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false)) {
                self.phase = .pi * 2
            }
        }
    }
}

struct WaveOnly_Previews: PreviewProvider {
    static var previews: some View {
        WaveOnly()
    }
}
