//
//  ShapeBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/03/26.
//

import SwiftUI

struct ShapeBasic: View {
    var body: some View {
        VStack (spacing: 20){
            // circle
            Text("원형")
                .font(.title)
            Circle()
            //                .fill(Color.blue)
            //                .foregroundColor(.pink)
            //                .stroke(Color.red, lineWidth: 20)
            //                .stroke(Color.purple ,style: StrokeStyle(lineWidth: 30, lineCap: .butt, dash: [30]))
                .trim(from: 0.2, to: 1.0)
                .stroke(Color.purple, lineWidth: 50)
                .frame(width: 200, height: 100)
                .padding()
            
            // Ellipse
            Text("타원형")
                .font(.title)
            Ellipse()
                .fill(Color.green)
                .frame(width: 200, height: 100, alignment: .center)
            
            // 캡슐
            Text("캡슐형")
                .font(.title)
            Capsule(style: .circular)
                .stroke(Color.blue, lineWidth: 30)
                .frame(width: 200, height: 100, alignment: .center)
            
        }
        
        VStack(spacing: 20){
            //   직사각형
            Text("직사각형")
                .font(.title)
            Rectangle()
                .fill(Color.red)
                .frame(width: 200, height: 100, alignment: .center)
            
            Text("둥근직사각형")
                .font(.title)
                RoundedRectangle(cornerRadius: 20)
                .trim(from:0.4, to:1.0)
                .frame(width: 300, height: 200, alignment: .center)
            
        }
        
    }
}

struct ShapeBasic_Previews: PreviewProvider {
    static var previews: some View {
        ShapeBasic()
    }
}
