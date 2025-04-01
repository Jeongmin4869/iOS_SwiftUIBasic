//
//  ForEachLoopBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/01.
//

import SwiftUI

struct ForEachLoopBasic: View {
    
    // 변수 생성
    var data:[String] = ["Hi", "Hello", "Hey"]
    
    var body: some View {
        VStack{
            ForEach(0..<10) { index in
                HStack{
                    Circle()
                        .frame(width: 20, height: 20)
                    Text("인덱스 번호 : \(index)")
                }
            }
            Divider()
            
            ForEach(data, id:\.self) {item in
                Text(item)
            }
        }
    }
}

struct ForEachLoopBasic_Previews: PreviewProvider {
    static var previews: some View {
        ForEachLoopBasic()
    }
}
