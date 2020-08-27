//
//  GuideView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 26/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct GuideView: View {
    var body: some View {
        HStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 15) {
                    Text("Guide")
                        .font(.system(size: 28, weight: .regular, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.725425601, green: 0.7255316973, blue: 0.725402534, alpha: 1)))
                        .rotationEffect(Angle(degrees: -90))
                    
                    ForEach(guideData) { guide in
                        GuideItemView(guide: guide)
                            .frame(height: 120)
                    }
                    .offset(x: -20)
                }
            }
            
        }
    }
}

struct GuideItemView: View {
    var guide: Guide
    
    var body: some View {
        Button(action: {
            
        }) {
            VStack {
                Image(guide.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Text(guide.name)
                    .font(.system(size: 13, weight: .bold, design: .rounded))
                    .foregroundColor(.gray)
            }
            .padding(.horizontal, 8)
            .padding(.vertical, 20)
            .background(Capsule().strokeBorder(Color(#colorLiteral(red: 0.9349636436, green: 0.9493057132, blue: 0.9620550275, alpha: 1)), lineWidth: 1))
            .foregroundColor(Color.white)
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct GuideView_Previews: PreviewProvider {
    static var previews: some View {
        GuideItemView(guide: guideData[0])
    }
}
