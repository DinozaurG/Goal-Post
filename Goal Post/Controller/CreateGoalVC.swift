//
//  CreateGoalVC.swift
//  Goal Post
//
//  Created by Алексей Шумейко on 22.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import UIKit

class CreateGoalVC: UIViewController {

    @IBOutlet weak var goalTextView: UITextView!
    @IBOutlet weak var shortTermBtn: UIButton!
    @IBOutlet weak var longTermBtn: UIButton!
    @IBOutlet weak var nextBtn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func shortTermBtnWasPressed(_ sender: Any) {
    }
    @IBAction func longTermBtnWasPressed(_ sender: Any) {
    }
    @IBAction func nextBtnWasPressed(_ sender: Any) {
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
}
