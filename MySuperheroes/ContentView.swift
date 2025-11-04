//
//  ContentView.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            List(SUPERHEROES, id: \.self) { superHero in
                Text(superHero.apodo)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
