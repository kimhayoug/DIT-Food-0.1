//
//  DetailViewController.swift
//  UiTableViewController Test 02
//
//  Created by 김종현 on 2018. 5. 28..
//  Copyright © 2018년 lse. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var detailTableView: UITableView!
    @IBOutlet weak var cellImageView: UIImageView!
    var cellImage: String = ""
    var cellName: String = ""
    var cellAddress: String = ""
    var cellTel: String = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        detailTableView.delegate = self
        detailTableView.dataSource = self
        cellImageView.image = UIImage(named: cellImage)
        
//        self.title = cellName
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0 {
            return "주소"
        } else if section == 1 {
            return "전화번호"
        } else {
            return "음식점 소개"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "detailCell", for: indexPath)
        
//        if indexPath.row == 0 {
//            cell.textLabel?.text = "test"
//            return cell
//        } else if indexPath.row == 1 {
//            cell.textLabel?.text = "test2"
//            return cell
//        } else {
//            cell.textLabel?.text = "test3"
//            return cell
//        }
        
//        switch indexPath.row {
//        case 0:
//            cell.textLabel?.text = "주소 : " + cellAddress
//            return cell
//        case 1:
//            cell.textLabel?.text = "전화번호 : " + cellTel
//            return cell
//        default :
//            cell.textLabel?.text = "test3"
//            return cell
//        }
        
        
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = cellAddress
            return cell
        case 1:
            cell.textLabel?.text = cellTel
            return cell
        default :
            cell.textLabel?.text = "test3"
            return cell
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
