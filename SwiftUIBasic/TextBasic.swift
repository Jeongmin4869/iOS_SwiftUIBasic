//
//  TextBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/03/24.
//

import SwiftUI

struct TextBasic: View {
    var body: some View {
        VStack(spacing: 20){
            
            // Font 사이즈를 title, body, footnote등 정하면	responsive
            Text("Hello world!")
                .font(.title)
//                .fontWeight(.semibold)
                .bold() // .fontWight(.bold)
                .underline(true, color: Color.red)
                .italic()
                .strikethrough(true, color: Color.green)
            
            // 이 방법으로 하게 되면 text 크기를 지정할 수 있습니다. 단점은 고정적임
            Text("Hello World2".uppercased())
                .font(.system(size: 20, weight: .semibold, design: .serif))
            
            // multiline text aliment
            Text("멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬 멀티라인 텍스트 정렬")
                .multilineTextAlignment(.center)
                .foregroundColor(.blue)
        }
    }
}

struct TextBasic_Previews: PreviewProvider {
    static var previews: some View {
        TextBasic()
    }
}
