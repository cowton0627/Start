//
//  MyTableViewController.swift
//  Start
//
//  Created by Chun-Li Cheng on 2021/11/1.
//

import UIKit

class MyTableViewCell: UITableViewCell {
    @IBOutlet weak var myLabel: UILabel!
    
}

struct Model {
    var name: String
    var sth: String
    
}

class MyTableViewController: UITableViewController {
    let models = [
        Model(name: "你的", sth: ""),
        Model(name: "我的", sth: ""),
        Model(name: "他的", sth: ""),
        Model(name: "你的", sth: ""),
        Model(name: "你的", sth: ""),
        Model(name: "你的", sth: ""),
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        models.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as? MyTableViewCell else {
            return UITableViewCell()
        }
        let cellRow = models[indexPath.row]
        cell.myLabel.text = cellRow.name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        120
    }


}
