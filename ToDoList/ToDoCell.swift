//
//  ToDoCell.swift
//  ToDoList
//
//  Created by Rosalie Snijders on 23-11-17.
//  Copyright © 2017 Rosalie Snijders. All rights reserved.
//

import UIKit

@objc protocol ToDoCellDelegate: class {
    func checkmarkTapped(sender: ToDoCell)
}

class ToDoCell: UITableViewCell {
    var delegate: ToDoCellDelegate?

    @IBOutlet weak var isCompleteButton: UIButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBAction func completeButtonTapped() {
        delegate?.checkmarkTapped(sender: self)
    }
}
