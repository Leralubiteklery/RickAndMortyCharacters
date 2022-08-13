//
//  ViewController.swift
//  MovieFinder
//
//  Created by Lera Savchenko on 8.08.22.
//

import UIKit

class CharactersListViewController: UITableViewController {
    
    private var characters: [Character] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.rowHeight = 150
    }
    
    //    MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        characters.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard
            let cell = tableView.dequeueReusableCell(
                withIdentifier: "character",
                for: indexPath
            ) as? CharacterCell
        else {
            return UITableViewCell()
        }
        let character = characters[indexPath.row]
        cell.configure(with: character)
        return cell
    }
}

//    MARK: - Networking
extension CharactersListViewController {
    
    private func fetchCharatcer() {
       NetworkManager.shared.fetchCharatcerInfo(from: NetworkManager.shared.charactersInfoUrl) { [weak self] result in
            switch result {
            case .success(let characters):
                self?.characters = characters
                self?.tableView.reloadData()
            case .failure(let error):
                print(error)
            }
        }
    }
}



