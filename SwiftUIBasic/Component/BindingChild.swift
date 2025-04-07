//
//  BindingChild.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/07.
//

import SwiftUI

struct BindingChild: View {
    
    /*
     
    @Binding - @State를 Subview에서 사용하기 위한 Wrapper
     
     */
    
    //property
    @State var buttonColor: Color = Color.blue
    @Binding var backgroundCOlor: Color
    @Binding var title: String
    
    var body: some View {
        Button {
            // action
            backgroundCOlor = Color.orange
            buttonColor = Color.pink
            title = "Binding Child View"
        } label: {
            Text("Child View 이동")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        }

    }
}

struct BindingChild_Previews: PreviewProvider {
    static var previews: some View {
        BindingChild(backgroundCOlor: .constant(Color.orange), title: .constant("Binding Child"))
            .previewLayout(.sizeThatFits)
    }
}
