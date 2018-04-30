//
//  ViewController.swift
//  simpleList
//
//  Created by D7703_13 on 2018. 4. 30..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var myTableView: UITableView!
    var datas = ["cat", "dog", "cow", "goat", "chick"]
    var subdatas = ["냐옹", "멍멍", "움머", "메에에", "삐약삐약"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // UIViewController와 Delegate 연결
        myTableView.delegate = self
        myTableView.dataSource = self
        
    }
    
    // UITableViewDataSoure
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let identifier = "RE"
        let cell = myTableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        // cell에 text 넣기
        
        cell.textLabel?.text = datas[indexPath.row]
        cell.detailTextLabel?.text = subdatas[indexPath.row]
        cell.imageView?.image = UIImage(named:"\(indexPath.row).jpg")
        
        
        return cell
    }
    
}

