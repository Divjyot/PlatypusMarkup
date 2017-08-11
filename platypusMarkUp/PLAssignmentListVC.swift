//
//  PLAssignmentListVC.swift
//  platypusMarkUp
//
//  Created by Divjyot Singh on 11/8/17.
//  Copyright © 2017 Divjyot Singh. All rights reserved.
//

import UIKit
import UXMPDFKit

class PLAssignmentListVC: UIViewController,UITableViewDelegate,UITableViewDataSource {

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
        return 1;
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        
        let assignmentCell : PLAssignmentListTableViewCell = tableView.dequeueReusableCell(withIdentifier:"assignmentListCell", for: indexPath) as! PLAssignmentListTableViewCell
        
        assignmentCell.serialNoLabel.text = String(indexPath.row)
        assignmentCell.assignmentLabel.text = String("Assgn. TITLE")
        assignmentCell.assignmentStatusLabel.text = String("Assgn. STATUS")
        assignmentCell.dueDateLabel.text = String ("Assgn. Due Date")
        return assignmentCell;
        
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let path = Bundle.main.path(forResource: "samplepdf", ofType: "pdf")!
        let document = try! PDFDocument(filePath: path, password: "password_if_needed")
        let pdf = PDFViewController(document: document)
        
        self.navigationController?.pushViewController(pdf, animated: true)
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
