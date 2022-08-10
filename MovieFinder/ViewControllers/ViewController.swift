//
//  ViewController.swift
//  MovieFinder
//
//  Created by Lera Savchenko on 8.08.22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func getCharactersButtonPressed(_ sender: Any) {
        fetchCharatcerInfo()
    }
    
    private func fetchCharatcerInfo() {
        
        guard let url = URL(string: "https://rickandmortyapi.com/api/character") else { return }
        
        URLSession.shared.dataTask(with: url) {data, _, error in
            guard let data = data else {
                print(error?.localizedDescription ?? "no error description")
                return
            }
            do {
                let listOfCharacters = try JSONDecoder().decode(ListOfCharacters.self, from: data)
                print(listOfCharacters)
            } catch let error {
                print(error)
            }
        }.resume()
    }
}

