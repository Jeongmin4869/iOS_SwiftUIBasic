//
//  IgnoreSafeAreaBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/01.
//

import SwiftUI

struct IgnoreSafeAreaBasic: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            
            // content
            VStack{
                Text("Hwllo, World!")
                    .font(.largeTitle)
            }
        }
        
        // 2번
        ScrollView {
            VStack{
                Text("박스형 텍스트")
                    .font(.largeTitle)
                    .frame(height: 150)
                
                ForEach(1..<11){ index in
                    RoundedRectangle(cornerRadius: 25.0)
                        .fill(Color.white)
                        .frame(height: 150)
                        .shadow(radius: 10)
                        .padding()
                        .overlay {
                            Text("\(index) 번 리스트")
                        }
                }
            }
        }
    }
}

struct IgnoreSafeAreaBasic_Previews: PreviewProvider {
    static var previews: some View {
        IgnoreSafeAreaBasic()
    }
}
