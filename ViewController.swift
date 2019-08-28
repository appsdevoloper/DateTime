//
//  ViewController.swift
//  DateTime
//
//  Created by Apple on 29/08/19.
//  Copyright © 2019 Revolut. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let result = formattedDateFromString(dateString: "28 Aug, 2019", withFormat: "dd-MM-yyyy h:mm a")
        //let result = formattedDateFromString(dateString: "28 Aug, 2019", withFormat: "yyyy-MM-dd h:mm:ss")
        self.resultLabel.text = result
    }
    
    func formattedDateFromString(dateString: String, withFormat format: String) -> String? {
        let inputFormatter = DateFormatter()
        inputFormatter.dateFormat = "dd MMM, yyyy"
        if let date = inputFormatter.date(from: dateString) {
            print(date)
            let outputFormatter = DateFormatter()
            outputFormatter.dateFormat = format
            return outputFormatter.string(from: date)
        } else {
            print("nope")
        }
        return nil
    }
    
    @IBAction func presentFirst(_ sender: Any) {
        let firstvc = self.storyboard?.instantiateViewController(withIdentifier: "firstcontroller") as! FirstViewController
        let navigationController = UINavigationController(rootViewController: firstvc)
        self.present(navigationController, animated: true, completion: nil)
    }
}

