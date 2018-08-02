//
//  brahmToolViewController.swift
//  NirogStreet
//
//  Created by Shivendra Pandey on 27/05/18.
//  Copyright © 2018 Diwakar Pandey. All rights reserved.
//

import UIKit

class brahmToolViewController: UITableViewController {

    var examinationNames = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        initialize()
    }
    
    func initialize() {
        examinationNames = ["Buckingham Palace",
                            "The Eiffel Tower",
                            "The Grand Canyon",
                            "Windsor Castle",
                            "Empire State Building"]
        tableView.estimatedRowHeight = 50
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // MARK: - Table view data source
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return examinationNames.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "brahmToolCell", for: indexPath)
        let row = indexPath.row
        UIFont.preferredFont(forTextStyle: UIFontTextStyle.headline)
        cell.textLabel?.text = examinationNames[row]
        return cell
    }
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
        }
    }
}
