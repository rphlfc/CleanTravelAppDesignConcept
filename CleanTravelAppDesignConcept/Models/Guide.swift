//
//  Guide.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import Foundation

struct Guide: Identifiable {
    let id = UUID().uuidString
    var imageName: String
    var name: String
}

let guideData = [
    Guide(imageName: "avatar1", name: "Monica"),
    Guide(imageName: "avatar2", name: "Rachel"),
    Guide(imageName: "avatar3", name: "Phoebe"),
    Guide(imageName: "avatar4", name: "Ross"),
    Guide(imageName: "avatar5", name: "Joey")
]
