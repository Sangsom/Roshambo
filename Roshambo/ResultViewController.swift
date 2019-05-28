//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 28/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    // MARK: Outlets

    @IBOutlet var playerImage: UIImageView!
    @IBOutlet var opponentImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    var playerHand: Hand?
    var opponentHand: Hand?

    // MARK: Methods

    override func viewDidLoad() {
        super.viewDidLoad()

        if let playerHand = playerHand, let opponentHand = opponentHand {
            playerImage.image = UIImage(named: playerHand.value)
            opponentImage.image = UIImage(named: opponentHand.value)
            resultLabel.text = compareHands(playerHand, opponentHand)
        } else {
            playerImage.image = nil
            playerImage.image = nil
        }

    }

    func compareHands(_ h1: Hand, _ h2: Hand) -> String {
        var result: String

        switch (h1, h2) {
        case (.rock, .paper):
            result = "Paper covers rock. You Lose!"
        case (.rock, .scissors):
            result = "Rock beats scissors. You Win!"
        case (.paper, .rock):
            result = "Paper covers rock. You Win!"
        case (.paper, .scissors):
            result = "Scissors cut paper. You Lose!"
        case (.scissors, .rock):
            result = "Rock beats scissors. You Lose!"
        case (.scissors, .paper):
            result = "Scissors cut paper. You Win!"
        default:
            result = "Draw!"
        }

        return result
    }

}
