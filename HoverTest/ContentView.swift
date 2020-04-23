//
//  ContentView.swift
//  HoverTest
//
//  Created by lucas fernández on 27/03/2020.
//  Copyright © 2020 lucas fernández. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    @State var enabled = true
    
    var body: some View {
        VStack(spacing: 40) {
            Toggle(isOn: $enabled) {
                Text("Text Enabled")
            }
            .padding()
            .background(Color.init(red: 0.9, green: 0.9, blue: 0.9))
            
            
            LabelWorld().padding().hoverEffectSafe(enabled)
            
            Button("Pressed \(counter) time\(counter == 1 ? "" : "s")") {
                self.counter += 1
                }.padding().hoverEffectSafe(enabled)
            
            
        }
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


extension View {
    func hoverEffectSafe(_ enabled: Bool = true) -> AnyView {
        guard enabled else { return AnyView(self)}
        
            if #available(iOS 13.4, *) {
                return AnyView(hoverEffect())
            } else {
                return AnyView(self)
            }
       
    }
}
