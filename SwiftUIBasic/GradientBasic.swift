//
//  GradientBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/03/30.
//

import SwiftUI

struct GradientBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            // Linear Gradient 선형 그라디언트
            Text("Linear Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .topLeading,
                        endPoint: .bottom)
                    
                )
                .frame(width: 300, height: 200)
            
            // Radial Gradient
            Text("Radial Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    RadialGradient(
                        gradient: Gradient(colors: [Color.yellow, Color.purple]),
                        center: .leading,
                        startRadius: 5,
                        endRadius: 300)
                )
                .frame(width: 300, height: 200)
            
            // Angular Gradient
            Text("Angular Gradient")
                .font(.title)
            RoundedRectangle(cornerRadius: 25)
                .fill(
                    AngularGradient(
                        gradient: Gradient(colors: [Color.blue, Color.green]),
                        center: .topLeading,
                        angle: .degrees(180 + 45)
                    )
                )
                .frame(width: 300, height: 200)

        }
    }
}

struct GradientBasic_Previews: PreviewProvider {
    static var previews: some View {
        GradientBasic()
    }
}
