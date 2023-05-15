//
//  ContentView.swift
//  EmmaKadai13
//
//  Created by Emma

import SwiftUI

struct ContentView: View {
    @ObservedObject private var fruits = Fruits()
    let checkMark: some View = Image(systemName: "checkmark").foregroundColor(.orange)

    var body: some View {
        NavigationStack {
            Text("4つの項目がチェックマーク付きで表示されるアプリ")
                .font(.headline)
                .padding(.bottom, 15)
                .padding(.horizontal, 60)
                .frame(maxWidth: .infinity)
                .background(.mint.opacity(0.5))

            List(fruits.fruitsData) { fruit in
                Label{
                    Text(fruit.name)
                } icon: {
                    if fruit.isChecked {
                        checkMark
                    } else {
                        checkMark
                            .hidden()
                    }
                }
            }
            .padding(.vertical, 10)
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
