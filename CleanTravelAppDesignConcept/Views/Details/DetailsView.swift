//
//  DetailsView.swift
//  CleanTravelAppDesignConcept
//
//  Created by Raphael Cerqueira on 27/08/20.
//  Copyright © 2020 Raphael Cerqueira. All rights reserved.
//

import SwiftUI

struct DetailsView: View {
    @Binding var showDetails: Bool
    @Binding var item: Place!
    var animation: Namespace.ID
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Image(item.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: UIScreen.main.bounds.width)
                .ignoresSafeArea(.all, edges: .all)
                .matchedGeometryEffect(id: item.image, in: animation)
            
            VStack {
                HStack {
                    Button(action: {
                        withAnimation(.easeOut) {
                            self.showDetails.toggle()
                        }
                    }) {
                        Image(systemName: "chevron.left")
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.black)
                            .frame(width: 40, height: 40)
                            .background(Color.white)
                            .clipShape(Circle())
                    }
                }
                .padding()
                
                Spacer()
                
                VStack(alignment: .leading) {
                    Text(item.title)
                        .font(.system(size: 36, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.1718640327, green: 0.2565479279, blue: 0.2901001573, alpha: 1)))
                        .padding(.top, 8)
                    
                    HStack {
                        ForEach(0 ..< 3) { item in
                            HStack {
                                Image(systemName: "star")
                                    .font(Font.subheadline.bold())
                                
                                Text("5.0")
                            }
                            .padding(.trailing)
                            .foregroundColor(.gray)
                        }
                    }
                    
                    Text("Details")
                        .font(.system(size: 22, weight: .medium, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.1718640327, green: 0.2565479279, blue: 0.2901001573, alpha: 1)))
                        .padding(.top, 20)
                    
                    Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.")
                        .font(.system(size: 14, weight: .bold, design: .rounded))
                        .foregroundColor(Color(#colorLiteral(red: 0.6000000238, green: 0.6000000238, blue: 0.6000000238, alpha: 1)))
                        .padding(.top)
                    
                    HStack {
                        VStack(alignment: .leading) {
                            Text("Per night")
                                .font(.system(size: 18, weight: .bold, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)))
                            
                            Text("$990")
                                .font(.system(size: 32, weight: .medium, design: .rounded))
                                .foregroundColor(Color(#colorLiteral(red: 0.1718640327, green: 0.2565479279, blue: 0.2901001573, alpha: 1)))
                                .padding(.top, 8)
                        }
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "heart")
                                .padding()
                                .background(Color.white)
                                .foregroundColor(Color.gray)
                                .clipShape(Circle())
                                .shadow(color: Color.gray.opacity(0.3), radius: 5, x: 0, y: 0)
                        }
                        
                        Button(action: {
                            
                        }) {
                            Image(systemName: "arrow.right")
                                .padding()
                                .background(Color(#colorLiteral(red: 0.001723175403, green: 0.2575275302, blue: 0.3372556567, alpha: 1)))
                                .foregroundColor(.white)
                                .clipShape(Circle())
                        }
                    }
                    .padding(.top)
                }
                .padding()
                .background(Color.white)
                .cornerRadius(30)
                .padding()
            }
        }
    }
}

//struct DetailsView_Previews: PreviewProvider {
//    static var previews: some View {
//        DetailsView(showDetails: .constant(true), item: .constant(GridItem(imageName: "image1", title: "Bali")))
//    }
//}
