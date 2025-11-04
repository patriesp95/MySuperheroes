//
//  SuperheroDetail.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct SuperheroDetail: View {
    let superHero: SuperHero
    var powers: [String] {
        superHero.poderes.map { String(describing: $0) }
    }
    var body: some View {
        Form {
            Section {
                Image(superHero.imagen)
                    .contextMenu {
                        Button {
                            
                        } label: {
                            Label("Compartir", systemImage: "square.and.arrow.up")
                        }
                        
                        Button {
                            
                        } label: {
                            Label("Email", systemImage: "paperplane")
                        }
                    }
                
            }
            
            Section {
                LabeledContent("Nombre real", value: superHero.nombreReal)
                LabeledContent("Edad", value: "\(superHero.edad) años")
                LabeledContent("Poderes", value: "\(powers.formatted(.list(type: .and)))")
                LabeledContent("Descripcion") {
                    SuperheroDetailRow(text: superHero.descripcion, imageName: nil)
                }
            } header: {
                Text(superHero.apodo)
                    .font(.title3)
                    .foregroundStyle(.primary)
            }

        }
    }
}

#Preview {
    SuperheroDetail(superHero: superHeroTest)
}
