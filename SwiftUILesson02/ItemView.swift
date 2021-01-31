//
//  ItemView.swift
//  SwiftUILesson02
//
//  Created by 高田 朋輝 on 2021/01/24.
//

import SwiftUI

struct ItemView: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            Image("pose_necchuu_computer_man")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 70)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 0))
            VStack(alignment: .leading) {
                Text(item.title)
                Text(item.explanation)
            }
        }
    }
    
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(item: Item(title: "タイトル", explanation: "説明"))
    }
}
