//
//  CenterModifier.swift
//  Africa
//
//  Created by Hasan Basri Öztürk on 30.09.2022.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
    
}
