//
//  FinishGoalVC.swift
//  Goal Post
//
//  Created by Алексей Шумейко on 22.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import UIKit
import CoreData

class FinishGoalVC: UIViewController, UITextViewDelegate {

    @IBOutlet weak var createGoalBtn: UIButton!
    @IBOutlet weak var pointsTextView: UITextView!
    
    var goalDescription: String!
    var goalType: GoalType!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createGoalBtn.bindToKeyboard()
        pointsTextView.delegate = self
    }
    
    func initData(description: String, type: GoalType) {
        self.goalDescription = description
        self.goalType = type
    }
    @IBAction func createGoalBtnWasPressed(_ sender: Any) {
        if pointsTextView.text != "" {
            self.save { (complete) in
                if complete {
                    dismiss(animated: true, completion: nil)
                }
            }
        }
    }
    @IBAction func backBtnWasPressed(_ sender: Any) {
        dismissDetail()
    }
    func save(completion: (_ finished: Bool) -> ()) {
        guard let managedContext = appDelegate?.persistentContainer.viewContext else { return }
        let goal = Goal(context: managedContext)
        
        goal.goalDescription = goalDescription
        goal.goalType = goalType.rawValue
        goal.goalCompletionValue = Int32(pointsTextView.text!)!
        goal.goalProgress = Int32(0)
        do {
            try managedContext.save()
            completion(true)
        } catch {
            debugPrint("Could not save: \(error.localizedDescription)")
            completion(false)
        }
    }
    func textViewDidBeginEditing(_ textView: UITextView) {
        pointsTextView.text = ""
        pointsTextView.textColor = #colorLiteral(red: 0.4866713285, green: 0.8740013242, blue: 0.4628211856, alpha: 1)
    }
    func textViewDidEndEditing(_ textView: UITextView) {
        if pointsTextView.text == "" {
            pointsTextView.text = "0"
            pointsTextView.textColor = #colorLiteral(red: 0.6666666865, green: 0.6666666865, blue: 0.6666666865, alpha: 1)
        }
    }
}
