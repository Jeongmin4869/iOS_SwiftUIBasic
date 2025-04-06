//
//  ItemBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/06.
//

import SwiftUI

struct ItemBasic: View {
    
    // property
    let title: String
    let count: Int
    let color: Color
    
    var body: some View {
        VStack{
            Text("\(count)");
            Text(title);
        }
        .padding()
        .background(color)
        .cornerRadius(10)
    }
}

struct ItemBasic_Previews: PreviewProvider {
    static var previews: some View {
        ItemBasic(title: "사과", count: 1, color: .red)
    }
}
