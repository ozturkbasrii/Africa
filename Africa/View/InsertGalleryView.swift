//
//  InsertGalleryView.swift
//  Africa
//
//  Created by Hasan Basri Öztürk on 29.09.2022.
//

import SwiftUI

struct InsertGalleryView: View {
    
    let animal: Animal
    
    var body: some View {
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                    .cornerRadius(12)
                }
            }
        }
    }
}

struct InsertGalleryView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        InsertGalleryView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
