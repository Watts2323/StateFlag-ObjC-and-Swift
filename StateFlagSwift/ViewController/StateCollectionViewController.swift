//
//  StateCollectionViewController.swift
//  StateFlagSwift
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import UIKit

private let reuseIdentifier = "stateCell"

class StateCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: UICollectionViewDataSource

    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return StateController.shared.states.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? StateCollectionViewCell
        
        //One state for each individual row
        let state = StateController.shared.states[indexPath.row]
        cell?.state = state
        
    
        return cell ?? UICollectionViewCell()
    }

}
