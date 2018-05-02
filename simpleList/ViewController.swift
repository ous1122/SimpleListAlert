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
    
    // UITableViewDataSoure 필수 소스(반드시 포함되어야만 한다.)
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas.count
    }
    // UITableViewControl 클릭 소스
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    print("section = \(indexPath.section) row = \(indexPath.row)")
        print(datas[indexPath.row])
        print(subdatas[indexPath.row])
        let myAlert = UIAlertController(title: "동물들", message: "동물에 대해 알아봅시다.", preferredStyle: .alert)
        
        let choose = UIAlertAction(title: ("section = \(indexPath.section) row = \(indexPath.row)"), style: .default, handler:{ (action:UIAlertAction) ->Void in self.view.backgroundColor = UIColor.red})
        
        let ok = UIAlertAction(title: "확인", style: .default, handler: {(myAction: UIAlertAction) -> Void in self.view.backgroundColor = UIColor.black
        })
        
        let delete = UIAlertAction(title: "삭제", style: .default, handler: {(myAction: UIAlertAction) -> Void in self.view.backgroundColor = UIColor.green
        })

        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler: {(myAction: UIAlertAction) -> Void in self.view.backgroundColor = UIColor.cyan
        })
        
        myAlert.addAction(choose)
        myAlert.addAction(ok)
        myAlert.addAction(cancelAction)
        myAlert.addAction(delete)
        present(myAlert, animated: true, completion: nil)
        
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

