//
//  BindingBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/07.
//

import SwiftUI

struct BindingBasic: View {
    
    // property
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Binding Basic View"
    
    var body: some View {
        ZStack{
            
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // content
            VStack{
                Text(title)
                
                // button
                // parameter로 @State값에 $를 붙인다
                BindingChild(backgroundCOlor: $backgroundColor, title: $title)
            }
        }
    }
}

struct BindingBasic_Previews: PreviewProvider {
    static var previews: some View {
        BindingBasic()
    }
}
