//
//  ContentView.swift
//  Nintendo Gameboy UI
//
//  Created by Alexandre Talatinian on 18/01/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("highlightGreen")
            
            VStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .frame(width: 350, height: 350)
                    
                    VStack {
                        Spacer()
                        
                        HStack {
                            VStack {
                                HStack(spacing: 2) {
                                    Circle()
                                        .frame(width: 8, height: 8)
                                        .foregroundColor(.white.opacity(0.25))
                                    Image(systemName: "wave.3.right")
                                        .foregroundColor(.white.opacity(0.25))
                                        .frame(width: 20)
                                }
                                
                                Text("Power".uppercased())
                                    .font(.system(size: 12))
                                    .foregroundColor(.white.opacity(0.5))
                                    .padding(.leading, 4)
                            }
                            Spacer()
                        }
                        
                        Spacer()
                        
                        HStack(alignment: .center, spacing: 8) {
                            Text("Game Boy".uppercased())
                                .font(.custom("Futura Medium Italic", size: 20))
                                .foregroundColor(.white.opacity(0.7))
                        }
                        
                       
                    }
                    
                    RoundedRectangle(cornerRadius: 5, style: .continuous)
                        .foregroundColor(.white.opacity(0.5))
                        .frame(width: 240, height: 230)
                }
                
                Text("Nintendo")
                    .font(.custom("Retro Gaming", size: 12))
                    .foregroundColor(Color.black.opacity(0.3))
                    .background(
                        RoundedRectangle(cornerRadius: 10, style: .continuous)
                            .stroke(Color.black.opacity(0.25), lineWidth: 0.5)
                            .foregroundColor(.clear)
                            .frame(width: 120, height: 30)
                    )
                
                HStack {
                    Image(systemName: "circle.grid.cross.fill")
                        .font(.system(size: 100))
                        .foregroundColor(.black.opacity(0.8))
                        .padding(.leading)
                    
                    Spacer()
                    
                    Text("B")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.5))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .offset(x: -30, y: 30)
                    
                    Text("A")
                        .font(.custom("Retro Gaming", size: 24))
                        .foregroundColor(.black.opacity(0.5))
                        .background(
                            Circle()
                                .foregroundColor(.black.opacity(0.75))
                                .frame(width: 40, height: 40)
                        )
                        .padding(.trailing, 40)
                }
                
                HStack {
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        Text("Select".uppercased())
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                    
                    VStack {
                        Ellipse()
                            .frame(width: 50, height: 10)
                            .foregroundColor(.black.opacity(0.9))
                        Text("Start".uppercased())
                            .font(.custom("Retro Gaming", size: 12))
                            .foregroundColor(.black.opacity(0.3))
                    }
                }
                .padding(.top, 50)
            }
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
