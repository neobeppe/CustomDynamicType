//
//  ContentView.swift
//  SwiftUIExample
//
//  Created by Giuseppe Travasoni on 30/11/23.
//

import SwiftUI
import CustomDynamicType

struct ContentView: View {
    var body: some View {
        VStack {
            Text("There is no strife, no prejudice, no national conflict in outer space as yet.")
                .font(Font.font(style: .largeTitle, overrideWeight: .bold))
            Text("Its hazards are hostile to us all.")
                .font(Font.font(style: .headline))
            Text("Its conquest deserves the best of all mankind, and its opportunity for peaceful cooperation many never come again.")
            Text("But why, some say, the moon? Why choose this as our goal?")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
