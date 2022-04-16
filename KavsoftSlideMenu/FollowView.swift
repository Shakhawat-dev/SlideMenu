//
//  FollowView.swift
//  KavsoftSlideMenu
//
//  Created by Shakhawat Hossain Shahin on 10/4/22.
//

import SwiftUI

struct FollowView: View {
    var count: Int
    var title: String
    
    var body: some View {
        HStack {
            Text("\(count)")
                .fontWeight(.bold)
                .foregroundColor(.black)
            
            Text(title)
                .foregroundColor(.gray)
        }
    }
}

struct FollowView_Previews: PreviewProvider {
    static var previews: some View {
        FollowView(count: 7, title: "Following")
    }
}
