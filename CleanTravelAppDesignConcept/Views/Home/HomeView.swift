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
    @Binding var item: GridItem?
    
    var body: some View {
        ZStack {
            HomeContentView(showDetails: self.$showDetails, item: self.$item)
            
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

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(showDetails: .constant(false), item: .constant(nil))
    }
}
