//
//  ContentView.swift
//  HoverTest
//
//  Created by lucas fernández on 27/03/2020.
//  Copyright © 2020 lucas fernández. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    func getHoveredLabel() -> AnyView {
        if #available(iOS 13.4, *) {
            return AnyView(
                LabelWorldHover()
            )
        } else {
            return AnyView(
                LabelWorld()
            )
        }
    }
    var body: some View {
        ZStack {
            getHoveredLabel()
        }
    }
}

@available(iOS 13.4, *)
struct LabelWorldHover: View {
    var body: some View {
        LabelWorld()
        .hoverEffect()
    }
}
struct LabelWorld: View {
    var body: some View {
        HStack {
           Text("Hello World")
           Image(systemName: "globe")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
