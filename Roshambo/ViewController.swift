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
        var controller: ResultViewController

        controller = self.storyboard?.instantiateViewController(withIdentifier: "ResultViewController") as! ResultViewController

        present(controller, animated: true, completion: nil)
    }
}

