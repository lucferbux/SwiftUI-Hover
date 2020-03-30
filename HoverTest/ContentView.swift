//
//  ContentView.swift
//  HoverTest
//
//  Created by lucas fernández on 27/03/2020.
//  Copyright © 2020 lucas fernández. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var hover = false
    @State private var click = false
    var body: some View {
        ZStack {
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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
