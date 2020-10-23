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
    @State var selectedItem: Place!
    @Namespace var animation
    
    var body: some View {
        ZStack {
            HomeView(showDetails: self.$showDetails, selectedItem: self.$selectedItem, animation: animation)
            
            if selectedItem != nil && showDetails {
                DetailsView(showDetails: self.$showDetails, item: self.$selectedItem, animation: animation)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
