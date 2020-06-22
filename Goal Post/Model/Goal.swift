//
//  Goal.swift
//  Goal Post
//
//  Created by Алексей Шумейко on 22.06.2020.
//  Copyright © 2020 Алексей Шумейко. All rights reserved.
//

import Foundation
struct Goal {
    private(set) public var description: String
    private(set) public var type: String
    private(set) public var progressAmount: Int
    
    init(description: String, type: String, progressAmount: Int)
    {
        self.description = description
        self.type = type
        self.progressAmount = progressAmount
    }
}
