//
//  HomeView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 27/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    @Binding var showDetails: Bool
    @Binding var selectedItem: Place?
    var animation: Namespace.ID
    
    var body: some View {
        ZStack {
            HomeContentView(showDetails: $showDetails, selectedItem: $selectedItem, animation: animation)
            
            VStack {
                Spacer()
                
                VStack {
                    TabBarView()
                        .background(Color.white)
                        .cornerRadius(30)
                }
                .frame(maxWidth: .infinity)
                .padding(.top, 8)
            }
        }
    }
}

//struct HomeView_Previes: PreviewProvider {
//    static var previews: some View {
//        HomeView(showDetails: .constant(false), selectedItem: .constant(places[0]))
//    }
//}
