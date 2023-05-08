//
//  ContentView.swift
//  EmmaKadai13
//
//  Created by Emma

import SwiftUI

struct ContentView: View {
    @ObservedObject private var fruits = Fruits()

    var body: some View {
        NavigationStack {
            Text("4つの項目がチェックマーク付きで\n表示されるアプリ")
                .font(.headline)
                .padding(.bottom, 15)
                .frame(maxWidth: .infinity)
                .background(.mint.opacity(0.5))

            List {
                ForEach(fruits.fruitsData){ item in
                Label("\(item.name)", systemImage: item.isChecked ? "checkmark" : "")
               }
                .padding(.vertical, 10)
            }
            .tint(.orange)
            .listStyle(.inset)

            .navigationTitle("課題13")
            .navigationBarTitleDisplayMode(.inline)
            .ignoresSafeArea(edges: [.leading, .trailing] )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
