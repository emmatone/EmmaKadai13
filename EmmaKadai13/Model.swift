//
//  Model.swift
//  EmmaKadai13
//
//  Created by Hitomi Ishiodori on 2023/04/29.
//

import Foundation

struct Fruit: Identifiable {
    let id = UUID()
    var name: String
    var isChecked: Bool
}

class Fruits: ObservableObject {
    @Published var fruitsData = [
        Fruit(name: "りんご", isChecked: false),
        Fruit(name: "みかん", isChecked: true),
        Fruit(name: "バナナ", isChecked: false),
        Fruit(name: "パイナップル", isChecked: true)
    ]
}
