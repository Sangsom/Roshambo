//
//  ViewController.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 27/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

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
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    // MARK: Actions
    @IBAction func selectRock() {
        var controller: ResultViewController

        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController

        controller.playerHand = Hand.rock
        controller.opponentHand = randomHand()
        present(controller, animated: true, completion: nil)
    }

    func randomHand() -> Hand?{
        let randomNumber = Int.random(in: 0...2)
        return Hand(rawValue: randomNumber)
    }

}

