//
//  HomeView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct HomeContentView: View {
    @Binding var showDetails: Bool
    @Binding var selectedItem: Place?
    var animation: Namespace.ID
    
    var body: some View {
        VStack {
            HStack {
                Button(action: {
                    
                }) {
                    VStack(alignment: .leading, spacing: 4) {
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 20, height: 3)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 20, height: 3)
                        
                        RoundedRectangle(cornerRadius: 5)
                            .frame(width: 7, height: 3)
                    }
                    .foregroundColor(Color(#colorLiteral(red: 0.1372389197, green: 0.137265116, blue: 0.1372332573, alpha: 1)))
                }
                .buttonStyle(PlainButtonStyle())
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 15)
                        .foregroundColor(Color(#colorLiteral(red: 0.06034546345, green: 0.1268387139, blue: 0.1433284879, alpha: 1)))
                }
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Place")
                            .font(.system(size: 40, weight: .regular, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.6430795789, green: 0.6431742311, blue: 0.6430588365, alpha: 1)))
                        
                        Text("Indonesia")
                            .font(.system(size: 40, weight: .regular, design: .rounded))
                            .foregroundColor(Color(#colorLiteral(red: 0.2202405035, green: 0.2998860478, blue: 0.3204657435, alpha: 1)))
                    }
                    .padding(.top)
                    .padding(.horizontal)
                    
                    GuideView()
                    
                    GridView(showDetails: $showDetails, selectedItem: $selectedItem, animation: animation)
                        .padding(.top, 8)
                    
                    Spacer()
                        .frame(minHeight: 100)
                }
            }
        }
    }
}

//struct HomeContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        HomeContentView(showDetails: .constant(false), selectedItem: .constant(places[0]))
//    }
//}
