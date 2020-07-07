//
//  ContentView.swift
//  Helicopter
//
//  Created by Krassimir Iankov on 7/7/20.
//  Copyright © 2020 Krassimir Iankov. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var heliPosition = CGPoint(x:100, y: 100)
    @State private var obstPosition = CGPoint(x:1000, y: 300)
    
    let timer = Timer.publish(every: 0.1, on: .main, in: .common).autoconnect()

    var body: some View {
        
        GeometryReader { geo in
        
            ZStack{
                Helicopter()
                    .position(self.heliPosition)
                    .onReceive(self.timer) {_ in
                        self.gravity()
                    }
                
                Obstacle()
                    .position(self.obstPosition)
                    .onReceive(self.timer) {_ in
                        self.obstMove()
                    }
                
                
            }
            .frame(width: geo.size.width, height: geo.size.height)
            .background(Color.black)
        .gesture(
            TapGesture()
                .onEnded{
                    withAnimation{
                        self.heliPosition.y -= 100
                    }
            })
        }
        .edgesIgnoringSafeArea(.all)
    }
    
    
    func gravity() {
        withAnimation{
            self.heliPosition.y += 20
        }
    }
    
    func obstMove() {
        
        if self.obstPosition.x > 0
        {
            withAnimation{
                self.obstPosition.x -= 20
            }
        }
        else
        { self.obstPosition.x = 1000 }
        
        
    }
    
    
    
}

