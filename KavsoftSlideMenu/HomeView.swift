//
//  HomeView.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 10/4/22.
//

import SwiftUI

struct HomeView: View {
    @State var showMenu: Bool = false
    
    @State var width = UIScreen.main.bounds.width - 90
    // To Hide view
    @State var x = -UIScreen.main.bounds.width + 90
     
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)) {
            // temporary
            HomePageView(x: $x)
            
            SlideMenu(showMenu: $showMenu)
                .shadow(color: Color.black.opacity(x != 0 ? 0.1 : 0), radius: 5, x: 5, y: 0)
                .offset(x: x)
                .background() {
                    Color.black.opacity(x == 0 ? 0.5 : 0)
                        .ignoresSafeArea(.all, edges: .vertical)
                        .onTapGesture {
                            withAnimation {
                                x = -width
                            }
                        }
                }
                
        }
        // Adding gesture and draggin
        .gesture(DragGesture().onChanged({ (value) in
            withAnimation {
                if value.translation.width > 0 {
                    if x < 0 {
                        x = -width + value.translation.width
                    }
                    
                } else {
                    x = value.translation.width
                }
            }
        }).onEnded({ value in
            withAnimation {
                if -x < width / 2 {
                    x = 0
                } else {
                    x = -width
                }
            }
        }))
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

extension View {
    func getRect() -> CGRect {
        return UIScreen.main.bounds
    }
}
