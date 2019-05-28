//
//  ResultViewController.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 28/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet var playerImage: UIImageView!
    @IBOutlet var opponentImage: UIImageView!
    var playerHand: Hand?
    var opponentHand: Hand?

    override func viewDidLoad() {
        super.viewDidLoad()

        if let playerHand = playerHand {
            playerImage.image = UIImage(named: playerHand.value)
        }

        if let opponentHand = opponentHand {
            opponentImage.image = UIImage(named: opponentHand.value)
        }
    }

}
