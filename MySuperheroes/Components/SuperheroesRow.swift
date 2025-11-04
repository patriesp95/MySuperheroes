//
//  SuperheroesRow.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct SuperheroesRow: View {
    let superHero: SuperHero
    var powers: [String] {
        superHero.poderes.map {
            String(describing: $0)
        }
    }
    
    var body: some View {
        VStack(alignment: .leading){
            HStack {
                Image(superHero.imagen)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    Text(superHero.apodo)
                        .font(.headline)
                    Text(powers.formatted(.list(type: .and)))
                        .font(.caption)
                        .foregroundStyle(.secondary)
                }
                .padding(.horizontal)
                .padding(.bottom, 32)
                
                Spacer()
            }
        }
        .padding()
    }
}

#Preview {
    SuperheroesRow(superHero: superHeroTest)
}
