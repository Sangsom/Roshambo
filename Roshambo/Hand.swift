//
//  Hand.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 28/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import Foundation

enum Hand: Int {
    case rock, paper, scissors

    var value: String {
        switch self {
        case .rock:
            return "rock"
        case .paper:
            return "paper"
        case .scissors:
            return "scissors"
        }
    }

    static func randomHand() -> Hand {
        let randomNumber = Int.random(in: 0...2)
        return Hand(rawValue: randomNumber)!
    }
}
