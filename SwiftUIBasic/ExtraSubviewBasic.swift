//
//  ExtraSubviewBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/06.
//

import SwiftUI

struct ExtraSubviewBasic: View {
    var body: some View {
        ZStack {
            // background
            Color.cyan
                .ignoresSafeArea()
            
            // content
            contentLayer
        }
    }
    
    // Body부분이 길어질 경우 ExtraView
    var contentLayer: some View {
        HStack{
            // 같은 코드를 재사용 할 경우 ExtraSubView
            ItemBasic(title: "사과", count: 1, color: .red)
            ItemBasic(title: "오렌지", count: 10, color: .orange)
            ItemBasic(title: "바나나", count: 34, color: .yellow)
        }
    }
}

struct ExtraSubviewBasic_Previews: PreviewProvider {
    static var previews: some View {
        ExtraSubviewBasic()
    }
}
