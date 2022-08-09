//
//  Movie.swift
//  MovieFinder
//
//  Created by Lera Savchenko on 8.08.22.
//

struct ListOfCharacters: Decodable {
//    let info: Int
    let results: [Character]
}

struct Character: Decodable {
    let name: String
    let status: String
    let species: String
    let image: String
}

enum imageUrl: String {
    case rick = "https://rickandmortyapi.com/api/character/avatar/1.jpeg"
    case morty = "https://rickandmortyapi.com/api/character/avatar/2.jpeg"
    case summer = "https://rickandmortyapi.com/api/character/avatar/3.jpeg"
    case beth = "https://rickandmortyapi.com/api/character/avatar/4.jpeg"
    case jerry = "https://rickandmortyapi.com/api/character/avatar/5.jpeg"
    case johnny = "https://rickandmortyapi.com/api/character/avatar/183.jpeg"
    case ants = "https://rickandmortyapi.com/api/character/avatar/20.jpeg"
}
