//
//  PaddingBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/03/31.
//

import SwiftUI

struct PaddingBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            // 1. Padding 기본
            Text("Hello, World!")
                .background(Color.yellow)
                .padding() // padding(.all, 15) // 기본
                .padding(.leading, 15) // CSS기준 Padding
                .background(Color.blue)
                .padding(.bottom, 20) // CSS기준 Margin
            
            Divider()
            
            // 2. Padding 응용
            Text("Hello, World!")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.bottom, 20)
            
            Text("안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다. 안녕하세요 헬로우 월드에 오신 여러분 환영합니다.")
            
        }
        //VStack 범위 안에서 padding설정
        .padding()
        .padding(.vertical, 30)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color:Color.black.opacity(0.3),
                    radius: 10,
                    x:10, y:10
                )
        )
        .padding()
    }
}

struct PaddingBasic_Previews: PreviewProvider {
    static var previews: some View {
        PaddingBasic()
    }
}
