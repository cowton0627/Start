//
//  ThirdViewController.swift
//  Start
//
//  Created by Chun-Li Cheng on 2021/11/1.
//

import UIKit

class ThirdViewController: UIViewController {
    @IBOutlet weak var tbHeightConstant: NSLayoutConstraint!
    @IBOutlet weak var menuTableView: UITableView!
    
    
    
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
        Content(name: "九", sth: ""),
        Content(name: "九", sth: ""),
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        menuTableView.dataSource = self
        menuTableView.delegate = self
        tbHeightConstant.constant = 43.5*CGFloat(contents.count)
    }
    

}

extension ThirdViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "\(ThirdTableViewCell.self)", for: indexPath) as? ThirdTableViewCell else {
            return UITableViewCell()
        }
        
        let cellRow = contents[indexPath.row]
        cell.menuLabel.text = cellRow.name
        
        return cell
        
        
    }
}

extension ThirdViewController: UITableViewDelegate {
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//
//    }
    
}
