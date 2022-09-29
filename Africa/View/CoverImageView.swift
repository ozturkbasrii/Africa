//
//  CoverImageview.swift
//  Africa
//
//  Created by Hasan Basri Öztürk on 28.09.2022.
//

import SwiftUI

struct CoverImageView: View {
    //MARK: - PROPERTIES
    
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    //MARK: - BODY
    var body: some View {
        
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .background(Color.black)
        .tabViewStyle(PageTabViewStyle())
    }
}

//MARK: - PREVIEW

struct CoverImageview_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
