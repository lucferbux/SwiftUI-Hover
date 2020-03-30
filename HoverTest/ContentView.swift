//
//  ContentView.swift
//  HoverTest
//
//  Created by lucas fernández on 27/03/2020.
//  Copyright © 2020 lucas fernández. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    let actions = ["book", "pencil", "trash"]
    @State private var hover = false
    @State private var click = false
    
    var body: some View {
        ZStack {
            HStack {
               Text("Hello World")
               Image(systemName: "globe")
            }
            .hoverEffect()
            .offset(y: -300)
            HStack {
                RoundedRectangle(cornerRadius: 10)
                .foregroundColor(Color("Primary"))
                .shadow(radius: 20)
                .frame(minWidth: 180,  maxWidth:250, minHeight: 180, maxHeight: 180)
                .scaleEffect(hover ? 1.05 : 1.0)
                .scaleEffect(click ? 0.95 : 1.0)
                .onHover{ hover in
                    self.hover = hover
                }
                .gesture(
                    LongPressGesture().onChanged { value in
                        self.click = true
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                            self.click = false
                        }
                    }
                )
                .animation(.default)
            }
            VStack {
                HStack {
                    Spacer()
                    ForEach(actions, id: \.self) { action in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: action)
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        .padding(5)
                        .hoverEffect()
                    }
                    
                }
                .padding()
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
