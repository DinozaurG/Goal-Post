//
//  UIButtonExt.swift
//  Goal Post
//
//  Created by Алексей Шумейко on 22.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import UIKit

extension UIButton {
    
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4922404289, green: 0.7722371817, blue: 0.4631441236, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.7464011312, green: 0.8857318759, blue: 0.7402122021, alpha: 1)
    }
}
