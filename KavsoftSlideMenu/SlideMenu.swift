//
//  SlideMenu.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 10/4/22.
//

import SwiftUI

struct SlideMenu: View {
    @Binding var showMenu: Bool
    
    var edges = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View {
        HStack(spacing: 0) {
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
                        
                        
                        VStack(alignment: .leading) {
//                            ForEach(menuButtons, id: \.self ) { item in
//                                MenuButton(icon: item, title: item)
//                            }
                            Divider()
                                .padding(.top)
                            
                            MenuButton(icon: "house.fill", title: "Home")
                            
                            MenuButton(icon: "doc.text.fill", title: "Terms & Conditions")
                            
                            MenuButton(icon: "gear", title: "Settings")
                            
                            Divider()
                                .padding(.top)
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
            // Since edges are ignored
            .padding(.top, edges!.top == 0 ? 15 : edges?.top)
            .padding(.bottom, edges!.bottom == 0 ? 15 : edges?.bottom)
            // Default width
            .frame(width: getRect().width - 90)
            .background() {
                Color.white
            }
            .ignoresSafeArea(.all, edges: .vertical)
            
            Spacer(minLength: 0)
        }
//        .background() {
//            Color.black.opacity(0.5)
//                .ignoresSafeArea(.all, edges: .vertical)
//        }
        
    }
}

//var menuButtons = ["Home", "Terms & Conditions", "Settings"]

struct MenuButton: View {
    var icon: String
    var title: String
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: icon)
                .resizable()
                .renderingMode(.template)
                .frame(width: 24, height: 24, alignment: .center)
                .foregroundColor(.gray)
            
            Text(title)
                .foregroundColor(.gray)
            
            Spacer(minLength: 0)
        }
        .padding(.vertical, 16)
    }
}

struct SlideMenu_Previews: PreviewProvider {
    static var previews: some View {
        SlideMenu(showMenu: .constant(false))
    }
}
