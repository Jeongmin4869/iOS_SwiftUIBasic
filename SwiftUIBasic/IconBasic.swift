//
//  IconBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/03/30.
//

import SwiftUI

struct IconBasic: View {
    var body: some View {
        VStack(spacing:20){
            Image(systemName: "person.fill.badge.plus")
                .resizable()
            // rendermode 에서 original 로 하게 되면 실제 color에서 multi color 로 변경되게 된다.
            // 즉 고유값 컬러로 변경되어서 다른 color로 변경하더라도 변경되지 않는 컬러값이 된다.
                .renderingMode(.original)
                .scaledToFill()
                .foregroundColor(Color.purple)
                .frame(width: 300, height: 300)
        }
    }
}

struct IconBasic_Previews: PreviewProvider {
    static var previews: some View {
        IconBasic()
    }
}
