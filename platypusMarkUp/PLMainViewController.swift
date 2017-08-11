//
//  PLMainViewController.swift
//  platypusMarkUp
//
//  Created by Divjyot Singh on 11/8/17.
//  Copyright © 2017 Divjyot Singh. All rights reserved.
//

import UIKit
import UXMPDFKit

class PLMainViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    let classListArray = Array<Any>()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return 5;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
    
        let cell : PLMainVCTableViewCell = tableView.dequeueReusableCell(withIdentifier:"classListCell", for: indexPath) as! PLMainVCTableViewCell
    
        cell.serialNoLabel.text = String(indexPath.row)
        cell.classCodeLabel.text = String("Class CODE")
        cell.classTitleLabel.text = String("Class TITLE")
        
        return cell;
        
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let assignmentListVC = mainStoryboard.instantiateViewController(withIdentifier: "PLAssignmentListVC")
        self.navigationController?.pushViewController(assignmentListVC, animated: true)
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
