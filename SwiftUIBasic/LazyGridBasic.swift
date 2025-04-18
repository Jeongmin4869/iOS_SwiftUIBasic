//
//  LazyGridBasic.swift
//  SwiftUIBasic
//
//  Created by 이정민 on 2025/04/01.
//

import SwiftUI

struct LazyGridBasic: View {
    
    // LasyVGrid
    // columns
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
    ]
    
    // LazyHGrid
    // title을 1000개 변수를 생성
    let title: [String] = Array(1...1000).map{"목록\($0)"}
    
    // 화면 그리드형식으로 채워줌
    let layout: [GridItem] = [
        GridItem(.flexible(maximum: 80)),
        GridItem(.flexible(maximum: 80))
    ]
    
    var body: some View {
        // 1-LazyGrid
        ScrollView{
            //Hero 부분 (위에 사진 부분)
            Rectangle()
                .fill(Color.orange)
                .frame(height: 400)
            
            LazyVGrid(
                columns: columns,
                alignment: .center,
                spacing:  6,
                pinnedViews: [.sectionHeaders]){
                    //Section 1
                    Section(header: Text("Section1")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.blue)
                        .padding()
                    ) {
                        ForEach(0..<20) {index in
                            Rectangle()
                                .fill(Color.gray)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                    } //: Section 1
                    
                    // Section 2
                    Section(header: Text("Section 2")
                        .foregroundColor(.white)
                        .font(.title)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.red)
                        .padding()
                    ){
                        ForEach(0..<20) {index in
                            Rectangle()
                                .fill(Color.green)
                                .frame(height: 150)
                                .overlay(
                                    Text("\(index) 번")
                                )
                        }
                        
                    }//: Section 2
                    
                }
        }// : 1번
        
        // LazyHGrid
        // ScrollView horizental
        ScrollView(.horizontal){
            LazyHGrid(rows: layout, spacing: 20) {
                ForEach(title, id:\.self){item in
                    VStack{
                        Capsule()
                            .fill(Color.yellow)
                            .frame(height: 30)
                        
                        Text(item)
                            .foregroundColor(Color.blue)
                    }
                }
            }
        }
    }
}

struct LazyGridBasic_Previews: PreviewProvider {
    static var previews: some View {
        LazyGridBasic()
    }
}
