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
    @Binding var item: GridItem?
    
    let rows = Row.all()
    
    var body: some View {
        VStack {
            ForEach(rows) { row in
                HStack(alignment: .center) {
                    ForEach(row.cells) { cell in
                        GridItemView(cell: cell, showDetails: self.$showDetails, item: self.$item)
                            .padding(8)
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}

struct GridItemView: View {
    var cell: Cell
    
    @Binding var showDetails: Bool
    @Binding var item: GridItem?
    
    var body: some View {
        Button(action: {
            self.item = self.cell.item
            self.showDetails.toggle()
        }) {
            ZStack(alignment: .bottom) {
                Image(cell.item.imageName)
                    .resizable()
                    .frame(height: 220)
                    .cornerRadius(20)
                    
                HStack {
                    Text(cell.item.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Spacer()
                    
                    Image(systemName: "star")
                        .foregroundColor(Color(#colorLiteral(red: 0.7254902124, green: 0.4784313738, blue: 0.09803921729, alpha: 1)))
                }
                .padding()
            }
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(showDetails: .constant(false), item: .constant(nil))
    }
}
