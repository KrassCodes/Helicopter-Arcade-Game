//
//  Obstacle.swift
//  Helicopter
//
//  Created by Krassimir Iankov on 7/7/20.
//  Copyright © 2020 Krassimir Iankov. All rights reserved.
//

import SwiftUI

struct Obstacle: View {
    
    let width: CGFloat = 20
    let height: CGFloat = 200
    
    var body: some View {
        
        Rectangle()
            .frame(width: width, height: height)
            .foregroundColor(Color.green)
        
    }
}
