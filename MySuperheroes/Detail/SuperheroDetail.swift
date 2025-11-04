//
//  SuperheroDetail.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct SuperheroDetail: View {
    let superHero: SuperHero
    var body: some View {
        Form {
            Section {
                Text(superHero.apodo)
                Text(superHero.descripcion)
            } header: {
                Text(superHero.nombreReal)
            }

        }
    }
}

#Preview {
    SuperheroDetail(superHero: superHeroTest)
}
