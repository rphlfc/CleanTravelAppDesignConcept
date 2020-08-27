//
//  ContentView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var showDetails = false
    @State var item: GridItem? = nil
    
    var body: some View {
        VStack {
            if showDetails {
                DetailsView(showDetails: self.$showDetails, item: self.$item)
            } else {
                HomeView(showDetails: self.$showDetails, item: self.$item)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
