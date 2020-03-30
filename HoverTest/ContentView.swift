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
   
    
    var body: some View {
        ZStack {
            HStack {
               Text("Hello World")
               Image(systemName: "globe")
            }
            .hoverEffect()
            VStack {
                HStack {
                    Spacer()
                    ForEach(actions, id: \.self) { action in
                        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                            Image(systemName: action)
                                .frame(width: 30, height: 30, alignment: .center)
                        }
                        .padding(5)
                        .hoverEffect(.lift)
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
