//
//  ViewController.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 27/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

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
        present(controller, animated: true, completion: nil)
    }

    @IBAction func selectPaper(_ sender: UIButton) {
        performSegue(withIdentifier: "selectPaper", sender: sender)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Code & Segue
        let controller = segue.destination as! ResultViewController
        controller.playerHand = getHand(sender as! UIButton)
    }

    func getHand(_ sender: UIButton) -> Hand {
        if sender.tag == 1 {
            return Hand.paper
        } else {
            return Hand.scissors
        }
    }

}

