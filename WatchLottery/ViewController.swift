//
//  ViewController.swift
//  WatchLottery
//
//  Created by Carmine Massei on 25/06/17.
//  Copyright © 2017 iOSFoundation. All rights reserved.
//

import UIKit
import GameplayKit

class ViewController: UIViewController {

    @IBOutlet var result: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func random(_ sender: UIButton) {
        let cr = GKShuffledDistribution(lowestValue: 1, highestValue: 30)
        result.text = "\(cr.nextInt())"
    }

}

