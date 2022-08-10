//
//  Movie.swift
//  MovieFinder
//
//  Created by Lera Savchenko on 8.08.22.
//

import Foundation

struct ListOfCharacters: Decodable {
//    let info: Info
    let results: [Character]
}

struct Character: Decodable {
    let name: String
    let status: String
    let species: String
    let image: URL
}
