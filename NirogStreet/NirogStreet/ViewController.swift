//
//  ViewController.swift
//  NirogStreet
//
//  Created by Shivendra Pandey on 20/05/18.
//  Copyright © 2018 Diwakar Pandey. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.barTintColor = UIColor.red

        
        let url = NSURL(string: "https://jsonplaceholder.typicode.com/users")
        var request = URLRequest(url:url! as URL)
        request.httpMethod = "GET"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        Alamofire.request(request as URLRequestConvertible).responseJSON(){ response in
            
            switch response.result{
            case.success(let data):
                print("successfully grabed response", data)
            case.failure(let error):
                print("request failed with error\(error)")
            }
    }

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

