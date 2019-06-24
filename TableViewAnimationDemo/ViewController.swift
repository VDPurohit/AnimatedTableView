//
//  ViewController.swift
//  TableViewAnimationDemo
//
//  Created by Admin on 10/04/19.
//  Copyright © 2019 CIPl-1PC143. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 375
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1000
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell")
        cell?.textLabel?.text = "\(indexPath.section + 1)"
        //cell?.transform = CGAffineTransform(rotationAngle: 360)
        cell?.transform = CGAffineTransform(scaleX: 0.2, y: 0.2)
        //cell?.alpha = 0.0
        UIView.animate(withDuration: 0.7) {
            cell?.transform = CGAffineTransform.identity
            cell?.alpha = 1.0
            cell?.layer.cornerRadius = 8.0
        }
        cell?.backgroundColor =  indexPath.row % 2 == 0 ? #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1) : #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        return cell!
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 10
    }

    @IBOutlet weak var tblView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

