//
//  HomeView.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 10/4/22.
//

import SwiftUI

struct HomeView: View {
    @State var showMenu: Bool = false
    
    var body: some View {
        NavigationView {
            HStack(spacing: 0.0) {
                SlideMenu(showMenu: $showMenu)
            }
        }
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarHidden(true)
        
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
