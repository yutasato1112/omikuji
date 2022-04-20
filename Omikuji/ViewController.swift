//
//  ViewController.swift
//  Omikuji
//
//  Created by 佐藤裕太 on 2020/09/17.
//  Copyright © 2020 佐藤裕太. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmikuji(_ sender: Any) {
        let results = ["大吉", "吉","中吉","小吉","末吉","凶", "大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        self.myLabel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        myLabel.layer.borderColor = UIColor.orange.cgColor
        myLabel.layer.borderWidth = 5
        myLabel.layer.cornerRadius = 50
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}

