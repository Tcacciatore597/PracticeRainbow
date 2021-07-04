//
//  ColorsTableViewController.swift
//  Rainbow
//
//  Created by Thomas Cacciatore on 7/4/21.
//

import UIKit

class ColorsTableViewController: UITableViewController {
    
    var colors: [Color] = [Color(name: "Red", color: .red), Color(name: "Green", color: .green), Color(name: "Blue", color: .blue),Color(name: "Yellow", color: .yellow), Color(name: "Purple", color: .purple), Color(name: "Orange", color: .orange), Color(name: "Pink", color: .magenta)]

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Rainbow"
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return colors.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        
        let color = colors[indexPath.row]
        cell.textLabel?.text = color.name

        return cell
    }

    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "ColorDetailSegue" {
            let detailVC = segue.destination as? ColorsDetailViewController
            guard let indexPath = self.tableView.indexPathForSelectedRow else { return }
            let color = colors[indexPath.row]
            
            detailVC?.selectedColor = color
        }
    }
    

}
