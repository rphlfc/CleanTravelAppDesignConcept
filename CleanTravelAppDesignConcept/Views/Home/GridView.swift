//
//  GridView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct GridView: View {
    @Binding var showDetails: Bool
    @Binding var selectedItem: Place?
    var animation: Namespace.ID
    
    var body: some View {
        LazyVGrid(columns: Array.init(repeating: GridItem(.flexible(), spacing: 8), count: 2), spacing: 8, content: {
            ForEach(places) { item in
                GridItemView(item: item, animation: animation)
                    .padding(8)
                    .onTapGesture {
                        withAnimation(.easeIn) {
                            selectedItem = item
                            showDetails.toggle()
                        }
                    }
            }
        })
        .padding(.horizontal)
    }
}

struct GridItemView: View {
    var item: Place
    var animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(item.image)
                .resizable()
                .frame(height: 220)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .matchedGeometryEffect(id: item.image, in: animation)
            
            HStack {
                Text(item.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                
                Image(systemName: "star")
                    .foregroundColor(Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)))
            }
            .padding()
        }
    }
}

//struct GridView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridView(showDetails: .constant(false), selectedItem: .constant(places[0]))
//    }
//}
