//
//  customViewController.swift
//  NirogStreet
//
//  Created by Shivendra Pandey on 29/05/18.
//  Copyright © 2018 Diwakar Pandey. All rights reserved.
//

import UIKit

class customViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet var tableView: UITableView!
    let IronManSuits = ["mark-1","mark-2","mark-3","mark-4","mark-5","mark-6","mark-7","mark-8","mark-9","mark-10","mark-41","mark-42","mark-43","mark-44","mark-45","mark-46","mark-47","mark-48","mark-49","mark-50"]
let suitsImages = ["Iron_Man_Mark_1.png","140622_JH_header.png","902100-product-silo1.png","03bdcf5711cd8b979f99460e0660191a.png","3966006-hulkbuster-armor-will-debut-in-avengers-2.png","10405859.png","c8ea5c28-5662-43c1-bcd4-cd463f034efb.png","f943b528318231.56052cf2ef729.png","Hot_Toys_IM_MK_42_Transparent.png","Hot-Toys-Die-Cast-Iron-Man-Mark-6-Sixth-Scale-Figure-Light-Up-Features.png","ht.mark6-0.png","Iron_Man_Armor_-_Mark_VI.png","Iron-Man-3-The-Offical-Game-Mark-V.png","ironman.png","ironmanmarkiiistealthhottoys.1498486733.png","main-qimg-1175f22b4f85208526dfa02d45e54e6f.png","Mark3.png","maxresdefault-6.png","maxresdefault-7.png","Starboost_Most_Powerful_Iron_Man_Suits.png"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
    return IronManSuits.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCell(withIdentifier: "customCell") as! customTableViewCell
        cell.iranman.text = IronManSuits[indexPath.row]
        cell.iranManImage.image = UIImage(named: suitsImages[indexPath.row])
        
        return cell
    }
    


}
