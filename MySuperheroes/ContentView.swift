//
//  ContentView.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List {
            ForEach(SUPERHEROES){ superHero in
                SuperheroesRow(superHero: superHero)
            }
        }
    }
}

#Preview {
    ContentView()
}
