//
//  StateBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/05.
//

import SwiftUI

struct StateBasic: View {
    
    /*
     
     @ : Property Wrapper. 프로퍼티가 저장되는 방식을 관리하는 코드를 추가
     @State : 변수가 변경될 때 View에서도 update되면서 값이 변경되길 원할 때 사용
         
     */
    
    
    // property
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "아직 버튼 안눌림"
    @State var count : Int = 0
    
    var body: some View {
        ZStack {
            // background
            backgroundColor
                .ignoresSafeArea()
            
            // coutent
            VStack (spacing: 20){
                Text(myTitle)
                    .font(.title)
                
                Text("Count : \(count)")
                    
                HStack (spacing: 20) {
                    Button {
                        // action
                        backgroundColor = .red
                        myTitle = "1번 버튼 눌림"
                        count += 1
                    } label: {
                        Text("Button 1")
                    }
                    
                    Button {
                        // action
                        backgroundColor = .purple
                        myTitle = "2번 버튼 눌림"
                        count -= 1
                    } label: {
                        Text("Button 2")
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

struct StateBasic_Previews: PreviewProvider {
    static var previews: some View {
        StateBasic()
    }
}
