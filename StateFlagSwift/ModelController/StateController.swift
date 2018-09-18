//
//  StateController.swift
//  StateFlagSwift
//
//  Created by Xavier on 9/17/18.
//  Copyright © 2018 Xavier ios dev. All rights reserved.
//

import Foundation

class StateController {
    
    static let shared = StateController()
    
    var states: [State] = []
    
    // True singleton where it initializes our states once. Its private because we can only have one instance of the class
    private init() {
        self.states = createAllStates()
    }
    
    // read
    // this turns the helpers into an actual state
    func createAllStates() -> [State] {
        //This is going to be our source of truth
        var placeHolderStates: [State] = []
        for stateFullName in StateHelper.fullNames {
            guard let index = StateHelper.fullNames.index(of: stateFullName) else { return
              [] }
            let abbreaviation = StateHelper.abbreviations[index]
            //Make an instance of State
            
            let state = State(name: stateFullName, abbreviation: abbreaviation)
            placeHolderStates.append(state)
            
        }
        
        return placeHolderStates
    }
    
}













