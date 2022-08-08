//
//  Movie.swift
//  MovieFinder
//
//  Created by Lera Savchenko on 8.08.22.
//

struct ListOfCharacters: Decodable {
    let count: Int
    let characters: [Character]?
}

struct Character: Decodable {
    let name: String?
    let status: String?
    let species: String?
    let image: String?
}
