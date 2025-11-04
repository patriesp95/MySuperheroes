//
//  SuperheroesList.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct SuperheroesList: View {
    var body: some View {
        NavigationStack {
            List {
                ForEach(SUPERHEROES){ superHero in
                    NavigationLink(value: superHero) {
                        SuperheroesRow(superHero: superHero)
                    }
                }
                .onDelete { indexSet in
                    SUPERHEROES.remove(atOffsets: indexSet)
                }
                .onMove { indexSet, row in
                    SUPERHEROES.move(fromOffsets: indexSet, toOffset: row)
                }
            }
            .toolbar {
                ToolbarItem {
                    EditButton()
                }
            }
            .navigationDestination(for: SuperHero.self) { superHero in
                SuperheroDetail(superHero: superHero)
            }
            .navigationTitle("Superheroes")
        }
    }
}

#Preview {
    SuperheroesList()
}
