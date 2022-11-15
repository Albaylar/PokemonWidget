//
//  Pokemon.swift
//  WidgetKit
//
//  Created by Furkan Deniz Albaylar on 8.10.2022.
//

import Foundation

struct Pokemon : Identifiable, Codable {
    
    let gorselIsmi : String
    let isim : String
    let tur : String
    var id : String {
        gorselIsmi
    }
    
}
let pikachu = Pokemon(gorselIsmi: "pikachu", isim: "Pikachu", tur: "Mouse Pokemon")
let charmander = Pokemon(gorselIsmi: "charmander", isim: "Charmander", tur: "Lizard Pokemon")
let clefairy = Pokemon(gorselIsmi: "clearfy", isim: "Clefairy", tur: "Fairy Pokemon")
let PokemonDizisi = [pikachu,charmander,clefairy]
