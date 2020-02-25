//
//  CommentsViewController.swift
//  16.Standart MVC-N Project
//
//  Created by Максим Окунеев on 11/26/19.
//  Copyright © 2019 Максим Окунеев. All rights reserved.
//

import UIKit

class CommentsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var comments = [Comment]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        self.tableView.rowHeight = 110
        
        CommentNetworkService.getComments { (response) in
            self.comments = response.comments
            self.tableView.reloadData()
            
        }
    }
}

extension CommentsViewController: UITableViewDelegate {}

extension CommentsViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CommentCell
        let comment = comments[indexPath.row]
        cell.configere(with: comment)
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection selection: Int) -> Int {
        return comments.count
    }
}
