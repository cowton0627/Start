//
//  AnotherViewController.swift
//  Start
//
//  Created by Chun-Li Cheng on 2021/11/1.
//

import UIKit

struct Content {
    var name: String
    var sth: String
    
}

class AnotherViewController: UIViewController {
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var heightConstant: NSLayoutConstraint!
    
    let contents = [
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
        Content(name: "一", sth: ""),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.delegate = self
        menuTableView.dataSource = self
        heightConstant.constant = 43.5*CGFloat(contents.count)
        
        
    }

}

extension AnotherViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(AnotherTableViewCell.self)", for: indexPath) as? AnotherTableViewCell else {
            return AnotherTableViewCell()
        }
        
        let cellRow = contents[indexPath.row]
        cell.menuLabel.text = cellRow.name
        
        return cell
        
        
        
    }
    
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        UITableView.automaticDimension
//    }
//
//    func tableView(_ tableView: UITableView, estimatedHeightForRowAt indexPath: IndexPath) -> CGFloat {
//        UITableView.automaticDimension
//    }
    
    
}
