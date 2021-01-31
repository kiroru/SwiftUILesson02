//
//  DetailView.swift
//  SwiftUILesson02
//
//  Created by 高田 朋輝 on 2021/01/24.
//

import SwiftUI

struct DetailView: View {
    
    let item: Item
    @Binding var isPresent: Bool
    
    var body: some View {
        VStack {
            Spacer()
            Text(item.title)
            Spacer()
            Text(item.explanation)
            Spacer()
            Button(NSLocalizedString("close", comment: "")) {
                isPresent = false
            }
            Spacer()
        }
        .navigationBarHidden(true)
    }
    
}
