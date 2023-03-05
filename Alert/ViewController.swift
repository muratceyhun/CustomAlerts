//
//  ViewController.swift
//  Alert
//
//  Created by Murat Ceyhun Korpeoglu on 4.03.2023.
//

import UIKit
import SCLAlertView

class ViewController: UIViewController {
    private let table = UITableView()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(table)
        table.frame = view.bounds
        table.delegate = self
        table.dataSource = self
    }
    
}

extension ViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        7
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "Click on me to show type of alerts."
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        table.deselectRow(at: indexPath, animated: true)
        
        if indexPath.row == 0 {
            SCLAlertView().showSuccess("Success", subTitle: "Great !")
            
        } else if indexPath.row == 1 {
            SCLAlertView().showError("Error...", subTitle: "Error detected")
            
        } else if indexPath.row == 2 {
            SCLAlertView().showInfo("Info", subTitle: "There is an info")
            
        } else if indexPath.row == 3 {
            SCLAlertView().showEdit("Edit", subTitle: "Edit or delete ?")
            
        } else if indexPath.row == 4 {
            SCLAlertView().showWarning("Warning", subTitle: "Warning !!")
        } else if indexPath.row == 5 {
            SCLAlertView().showTitle("Titleeee", subTitle: "Something", style: .info)
        }
    }
}

