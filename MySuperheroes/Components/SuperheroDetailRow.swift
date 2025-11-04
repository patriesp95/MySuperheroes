//
//  SuperheroDetailRow.swift
//  MySuperheroes
//
//  Created by Patricia M Espert on 4/11/25.
//

import SwiftUI

struct SuperheroDetailRow: View {
    var text: String
    let imageName: String?
    var body: some View {
        if let imageName {
            HStack(alignment: .top, spacing: 2){
                
                Image(systemName: imageName)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 20, height: 20)
                    .padding(.trailing)
                
                Text(text)
                    .font(.system(size: 14))
                    .fontWeight(.light)
                    .foregroundStyle(.secondary)
                    .fontDesign(.monospaced)
                
                Spacer()
                
            }
            .padding()
            
        } else {
            Text(text)
                .font(.system(size: 14))
                .fontWeight(.light)
                .foregroundStyle(.secondary)
                .fontDesign(.monospaced)
                .padding()
        }
    }
}

#Preview {
    SuperheroDetailRow(text: superHeroTest.descripcion, imageName: nil)
}
