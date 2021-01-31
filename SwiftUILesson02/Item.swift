//
//  Item.swift
//  SwiftUILesson02
//
//  Created by 高田 朋輝 on 2021/01/24.
//

import Foundation

class Item: Identifiable {
    
    let id: UUID = UUID()
    let title: String
    let explanation: String
    
    init(title:String, explanation:String) {
        self.title = title
        self.explanation = explanation
    }

}
