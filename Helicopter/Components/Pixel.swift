//
//  Pixel.swift
//  Helicopter
//
//  Created by Krassimir Iankov on 7/7/20.
//  Copyright © 2020 Krassimir Iankov. All rights reserved.
//

import SwiftUI

struct Pixel: View {
    let size: CGFloat
    let color: Color
    
    
    var body: some View {
        Rectangle()
            .frame(width: size, height: size)
            .foregroundColor(color)
    }
    
    
}
