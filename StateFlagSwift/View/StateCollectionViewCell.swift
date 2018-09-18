//
//  StateCollectionViewCell.swift
//  StateFlagSwift
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

class StateCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var flagImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    var state: State? {
        didSet {
            updateViews()
        }
    }
    
    func updateViews() {
        guard let state = state else { return }
        flagImageView.image = UIImage(named: state.abbreviation)
        nameLabel.text = state.name
    }
    
    
    
}
