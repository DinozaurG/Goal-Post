//
//  GoalCell.swift
//  Goal Post
//
//  Created by Алексей Шумейко on 22.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import UIKit

class GoalCell: UITableViewCell {

    @IBOutlet weak var goalDescriptionLbl: UILabel!
    @IBOutlet weak var goalTypeLbl: UILabel!
    @IBOutlet weak var goalProgressLbl: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func updateViews(goal: Goal) {
        goalDescriptionLbl.text = goal.description
        goalTypeLbl.text = goal.type
        goalProgressLbl.text = String(describing: goal.progressAmount)
    }
}
