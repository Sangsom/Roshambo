//
//  ViewController.swift
//  Roshambo
//
//  Created by Rinalds Domanovs on 27/05/2019.
//  Copyright © 2019 Rinalds Domanovs. All rights reserved.
//

import UIKit

enum GameImages {
    case rock, paper, scissors
}

class ViewController: UIViewController {

    // MARK: Outlets
    
    @IBOutlet var rock: UIImageView!
    @IBOutlet var paper: UIImageView!
    @IBOutlet var scissors: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        rock.image = UIImage(named: "rock")
        paper.image = UIImage(named: "paper")
        scissors.image = UIImage(named: "scissors")
    }

}

