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
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
