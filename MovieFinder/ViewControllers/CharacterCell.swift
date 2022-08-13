//
//  CharacterCell.swift
//  RickAndMortyCharaters
//
//  Created by Lera Savchenko on 12.08.22.
//


import UIKit

class CharacterCell: UITableViewCell {
    @IBOutlet var characterImage: UIImageView!
    @IBOutlet var characterNameLabel: UILabel!
    @IBOutlet var characterSpiciesLabel: UILabel!
    @IBOutlet var characterStatusLabel: UILabel!
    
    func configure(with character: Character) {
        characterNameLabel.text = character.name
        characterSpiciesLabel.text = character.species
        characterStatusLabel.text = character.status
        
        NetworkManager.shared.fetchImage(from: character.image) { [weak self] result in
            switch result {
            case .success(let imageData):
                self?.characterImage.image = UIImage(data: imageData)
            case .failure(let error):
                print(error)
            }
        }
    }
    
}
