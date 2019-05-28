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

    static func randomHand() -> Hand {
        let randomNumber = Int.random(in: 0...2)
        return Hand(rawValue: randomNumber)!
    }
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
    }

    // MARK: Actions
    @IBAction func selectRock() {
        // Code only change VC
        var controller: ResultViewController

        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController

        controller.playerHand = Hand.rock
        controller.opponentHand = randomHand()
        present(controller, animated: true, completion: nil)
    }


    @IBAction func selectPaper(_ sender: UIButton) {
        performSegue(withIdentifier: "selectPaper", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Code & Segue
        let controller = segue.destination as! ResultViewController

        controller.playerHand = getHand(sender as! UIButton)
        controller.opponentHand = Hand.randomHand()
    }

    func getHand(_ sender: UIButton) -> Hand {
        if sender.tag == 1 {
            return Hand.paper
        } else {
            return Hand.scissors
        }
    }

}

