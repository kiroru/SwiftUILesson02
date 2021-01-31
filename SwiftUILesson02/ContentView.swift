//
//  ContentView.swift
//  SwiftUILesson02
//
//  Created by 高田 朋輝 on 2021/01/24.
//

import SwiftUI

struct ContentView: View {
    
    @State var items:[Item] = []
    @State var isPresentDetailView = false
    
    var body: some View {

        ScrollView() {
            LazyVStack(alignment: .leading) {
                ForEach(items) { item in
                    ItemView(item: item)
                        .onTapGesture {
                            isPresentDetailView = true
                        }
                        .fullScreenCover(isPresented: $isPresentDetailView, content: {
                            DetailView(item: item, isPresent: $isPresentDetailView)
                        })
                }
            }
        }
        .navigationBarHidden(true)
        .onAppear() {
            if items.count == 0 {
                for i in 1...50 {
                    items.append(
                        Item(
                            title: "\(NSLocalizedString("title", comment: "")) \(i)",
                            explanation: "\(NSLocalizedString("explanation", comment: "")) \(i)"
                        )
                    )
                }
            }
        }
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
