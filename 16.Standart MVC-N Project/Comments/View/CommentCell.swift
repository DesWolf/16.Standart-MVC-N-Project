//
//  CommentCell.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/26/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import UIKit

class CommentCell: UITableViewCell {
    
    @IBOutlet var label: UILabel!
    @IBOutlet var textView: UITextView!
    
    
    func configere( with comment: Comment) {
        self.label.text = comment.name
        self.textView.text = comment.body
    }



}
