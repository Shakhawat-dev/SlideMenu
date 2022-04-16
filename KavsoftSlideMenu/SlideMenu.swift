//
//  SlideMenu.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 10/4/22.
//

import SwiftUI

struct SlideMenu: View {
    @Binding var showMenu: Bool
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            
            HStack(alignment: .top, spacing: 12) {
                VStack(alignment: .leading, spacing: 12) {
                    Text("Username")
                        .font(.title3)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text("@User")
                        .foregroundColor(.gray)
                    
                    HStack(spacing: 20) {
                        FollowView(count: 8, title: "Following")
                            .onTapGesture {
                                // Do something
                            }
                        
                        FollowView(count: 108, title: "Following")
                            .onTapGesture {
                                // Do something
                            }
                    }
                }
                
                Spacer(minLength: 0)
                
                Button {
                    // DO SOmething
                } label: {
                    Image(systemName: "chevron.down")
                        .foregroundColor(Color.blue)
                }

            }
            
            Spacer(minLength: 0)
        }
        .padding(.horizontal, 20)
        .frame(width: getRect().width - 90)
        .frame(height: .infinity)
        .background() {
            Color.primary.opacity(0.04)
                .ignoresSafeArea(.container, edges: .vertical)
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu(showMenu: .constant(false))
    }
}
