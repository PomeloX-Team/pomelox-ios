//
//  PomeloTableViewController.swift
//  pomeloX-ios
//
//  Created by Madlab on 24/12/2560 BE.
//  Copyright © 2560 Supakit Kriangkhajorn. All rights reserved.
//

import UIKit

class PomeloTableViewController: UITableViewController {

    //MARK: Properties
    
    var pomelos = [Pomelo]()
    //MARK: Private Methods
    
    private func loadSamplePomelo() {
        let photo1 = UIImage(named: "grade1")
        let photo2 = UIImage(named: "grade2")
        let photo3 = UIImage(named: "grade3")
        guard let pomelo1 = Pomelo(name: "KhaoYai 1", photo: photo1, date: "22/12/2539") else {
            fatalError("Unable to instantiate 1")
        }
        
        guard let pomelo2 = Pomelo(name: "KhaoYai 2", photo: photo2, date: "22/12/2539") else {
            fatalError("Unable to instantiate 2")
        }
        
        guard let pomelo3 = Pomelo(name: "KhaoYai 3", photo: photo3, date: "22/12/2539") else {
            fatalError("Unable to instantiate 3")
        }
        pomelos += [pomelo1,pomelo2,pomelo3]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        loadSamplePomelo()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    //MARK: Actions
    @IBAction func unwindToPomeloList(sender: UIStoryboardSegue) {
        if let sourceViewController = sender.source as? ViewController, let pomelo = sourceViewController.pomelo {
            // Add a new meal.
            let newIndexPath = IndexPath(row: pomelos.count, section: 0)
            pomelos.append(pomelo)
            tableView.insertRows(at: [newIndexPath], with: .automatic)
        }
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pomelos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cellIdentifier = "PomeloTableViewCell"
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as? PomeloTableViewCell  else {
            fatalError("The dequeued cell is not an instance of MealTableViewCell.")
        }
        
        // Fetches the appropriate meal for the data source layout.
        let pomelo = pomelos[indexPath.row]
        
        cell.nameLabel.text = pomelo.name
        cell.photoImageView.image = pomelo.photo
        cell.dateLabel.text = pomelo.date
        return cell
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
