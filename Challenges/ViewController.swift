//
//  ViewController.swift
//  Challenges
//
//  Created by Jon Thornburg on 5/3/16.
//  Copyright © 2016 Jon Thornburg. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var textfield: UITextField!
    @IBOutlet weak var label: UILabel!
    let graph = Graph()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let arr = [7, 5, 2, 7, 7, 3, 2, 5, 7]
        
        print(graph.graphFromArray(arr))
        
    }

        func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        var arr = [Int]()
        if let text = textField.text {
            for item in text.characters {
                let str = String(item)
                if let num = Int(str) {
                    arr += [num]
                }
            }
        }
        
        self.label.text = self.graph.graphFromArray(arr)
        
        return true
    }
    @IBAction func clearButtonTapped(sender: AnyObject) {
        self.textfield.text = ""
        self.label.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}



