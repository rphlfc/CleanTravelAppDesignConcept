//
//  TabBarView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct TabBarView: View {
    @State var selectedItem = 0
    
    var body: some View {
        HStack {
            ForEach(0..<tabBarItems.count) { i in
                TabBarItemView(item: tabBarItems[i], selectedItem: self.$selectedItem, index: i)
            }
            
            Image("avatar5")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 50)
            .clipShape(Circle())
            .padding(.leading)
        }
        .background(Capsule().strokeBorder(Color(#colorLiteral(red: 0.9349636436, green: 0.9493057132, blue: 0.9620550275, alpha: 1)), lineWidth: 1))
    }
}

struct TabBarItemView: View {
    var item: TabBarItem
    @Binding var selectedItem: Int
    var index: Int
    
    var body: some View {
        Button(action: {
            withAnimation {
                self.selectedItem = self.index
            }
        }) {
            HStack {
                Image(systemName: item.imageName)
                    .font(Font.headline.weight(.medium))
                
                Text(item.title)
                    .font(.system(size: 14, weight: .bold, design: .rounded))
            }
            .foregroundColor(Color(#colorLiteral(red: 0.6667765975, green: 0.6665422916, blue: 0.6752030849, alpha: 1)))
            .padding(.leading)
        }
        .animation(.easeOut(duration: 0.1))
        .frame(width: selectedItem == index ? 120 : 30, height: 50)
    }
}

struct TabBarView_Previews: PreviewProvider {
    static var previews: some View {
        TabBarView()
    }
}
