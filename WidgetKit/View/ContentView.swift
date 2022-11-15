//
//  ContentView.swift
//     
//
//  Created by Furkan Deniz Albaylar on 6.10.2022.
//

import SwiftUI
import WidgetKit

struct ContentView: View {
    
    @AppStorage("pokemon", store: UserDefaults(suiteName: "group.Albaylar.PokemonWidgetKit"))
    var pokemonData : Data = Data()
    
    var body: some View {
        VStack{
            ForEach(PokemonDizisi){ Pokemon in
                PokemonView(pokemon: Pokemon).onTapGesture( perform: {
                    userDefaultKaydet(pokemon: Pokemon)
                })
            }
                
            
        }
    }
    
    func userDefaultKaydet(pokemon: Pokemon) {
        
        if let pokemonData = try?
            JSONEncoder().encode(pokemon)  {
            self.pokemonData = pokemonData
            print(pokemon.isim)
            WidgetCenter.shared.reloadTimelines(ofKind: "WidgetPokemon")
        }
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
