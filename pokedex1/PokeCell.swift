//
//  PokeCell.swift
//  pokedex
//
//  Created by Gnana Siva Sai on 22/12/16.
//  Copyright © 2016 Gnana Siva Sai. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        
        super.init(coder: aDecoder)
        layer .cornerRadius = 5.0
        
    }
    
    func configureCell(_ pokemon: Pokemon){
        
        self.pokemon = pokemon
        nameLbl.text = self.pokemon.name.capitalized
        thumbImg.image = UIImage(named: "\(self.pokemon.pokedexId)")
        
    }
    
}
