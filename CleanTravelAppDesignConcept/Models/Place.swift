//
//  Place.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 20/10/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct Place: Identifiable {
    let id = UUID()
    let image: String
    let title: String
}

let places = [
    Place(image: "image1", title: "Bali"),
    Place(image: "image2", title: "Klingking Bea"),
    Place(image: "image3", title: "Bali"),
    Place(image: "image4", title: "Nusa Penida")
]
