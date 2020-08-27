//
//  TabBarItem.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct TabBarItem: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var title: String
}

let tabBarItems = [
    TabBarItem(imageName: "house", title: "Home"),
    TabBarItem(imageName: "magnifyingglass", title: "Search"),
    TabBarItem(imageName: "bell", title: "Messages"),
    TabBarItem(imageName: "star", title: "Star")
]
