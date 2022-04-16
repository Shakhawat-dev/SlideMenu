//
//  HomePageView.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 16/4/22.
//

import SwiftUI

struct HomePageView: View {
    @Binding var x: CGFloat
    
    var body: some View {
        VStack {
            HStack {
                Button {
                    withAnimation {
                        x = 0
                    }
                } label: {
                    Image(systemName: "line.horizontal.3")
                        .font(.system(size: 24))
                        .foregroundColor(.blue)
                }
                
                Spacer(minLength: 0)

                Text("Title")
                    .bold()
                    .foregroundColor(.blue)
                                
                Spacer(minLength: 0)
            }
            .padding()
            .background(.white)
            .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
            
            Spacer()
        }
        .contentShape(Rectangle())
        .background(.white)
    }
}

struct HomePageView_Previews: PreviewProvider {
    static var previews: some View {
        HomePageView(x: .constant(0.0))
    }
}
