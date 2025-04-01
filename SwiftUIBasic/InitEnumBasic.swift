//
//  InitEnumBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/01.
//

import SwiftUI

struct InitEnumBasic: View {
    
    // 변수선언
    let backgroundColor: Color
    let count: Int
    let title: String
    
    // Enum 생성
    enum Fruit{
        case apple
        case orange
    }
    
    // init함수 생성
    init(count: Int, fruit: Fruit){
        self.count = count
        if fruit == .apple {
            self.title = "사과"
            self.backgroundColor = .red
        }
        else {
            self.title = "오렌지"
            self.backgroundColor = .orange
        }
    }
     
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text(title)
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundColor)
        .cornerRadius(10)
    }
}

struct InitEnumBasic_Previews: PreviewProvider {
    static var previews: some View {
        HStack{
            InitEnumBasic(count: 100, fruit: .apple)
            InitEnumBasic(count: 46, fruit: .orange)
        }
    }
}
