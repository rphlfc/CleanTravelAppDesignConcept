//
//  Cell.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct Cell: Identifiable {
    let id = UUID()
    let item: GridItem
}

struct Row: Identifiable {
    let id = UUID()
    let cells: [Cell]
}

struct GridItem: Identifiable {
    let id = UUID()
    let imageName: String
    let title: String
}

extension Row {
    static func all() -> [Row] {
        return [
            Row(cells: [Cell(item: GridItem(imageName: "image1", title: "Bali")), Cell(item: GridItem(imageName: "image2", title: "Klingking Bea"))]),
            Row(cells: [Cell(item: GridItem(imageName: "image3", title: "Bali")), Cell(item: GridItem(imageName: "image4", title: "Nusa Penida"))])
        ]
    }
}


