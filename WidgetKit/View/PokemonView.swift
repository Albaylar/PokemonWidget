//
//  PokemonView.swift
//  WidgetKit
//
//  Created by Furkan Deniz Albaylar on 9.10.2022.
//

import SwiftUI



struct PokemonView: View {
    let pokemon : Pokemon
    var body: some View {
        HStack{
            OzelGorselView(image: Image(
                pokemon.gorselIsmi)).frame(width: 100, height: 100, alignment: .center)
                .padding()
            Spacer()
            VStack{
                Text(pokemon.isim)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.blue)
                Text(pokemon.tur)
            }
            Spacer()
        }
        .frame(width: UIScreen.main.bounds.width)
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: pikachu)
    }
}
