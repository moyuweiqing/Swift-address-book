//
//  mail_listTableViewController.swift
//  hellow
//
//  Created by Apple on 2018/11/6.
//  Copyright © 2018年 nucle. All rights reserved.
//

import UIKit

class mail_listTableViewController: UITableViewController {

    var mailList: [mail] = [mail]()
    func initMailList(){
        mailList.append(mail(inputName: "zs", inputMail: "zs@scut.edu.cn",inputImage:nil))
        mailList.append(mail(inputName: "ls", inputMail: "ls@scut.edu.cn",inputImage:nil))
        
    }
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        initMailList()
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return mailList.count
    }

   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "mailcell", for: indexPath) as!cell_TableViewCell
        //cell.textLabel?.text = String(indexPath.row)
       cell.NameLabel?.text = mailList[indexPath.row].name
       cell.MailLabel?.text = mailList[indexPath.row].mail
       cell.photo.image = mailList[indexPath.row].photo
        // Configure the cell...
     
        return cell
    }
 
    @IBAction func cancle(_ segue: UIStoryboardSegue) {
    }
    @IBAction func save(_ segue: UIStoryboardSegue) {
        
        if let saveVC = segue.source as?
            detailController{
            if let mailEditResult = saveVC.mailForEdit{
                if let selectedIndexPath = tableView.indexPathForSelectedRow {
                    mailList[(selectedIndexPath as NSIndexPath).row] = mailEditResult
                    tableView.reloadRows(at: [selectedIndexPath], with: .none)
                }
                else{
                    mailList.append(mailEditResult)
                    let newIndexPath = IndexPath(row:mailList.count-1,section:0)
                    tableView.insertRows(at: [newIndexPath], with: .automatic)
                }
            }
        }
    }
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        let descriptionVC = segue.destination as! detailController
        if let selectedCell = sender as? UITableViewCell{
            let indexPath = tableView.indexPath(for: selectedCell)!
            let selectedMail = mailList[(indexPath as NSIndexPath).row]
            descriptionVC.mailForEdit = selectedMail
         
        }
        
        
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
 

}
