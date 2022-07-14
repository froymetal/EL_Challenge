//
//  Challenge3ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

class Challenge3ViewController: UIViewController {


    @IBOutlet weak var inTextField: UITextField!
    @IBOutlet weak var outLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func deleteSpaces(_ sender: Any) {
        let texto = inTextField.text
        if texto != "" {
            var result: String = ""
            for character in texto ?? "" {
                if character != " " {
                    result += character.description
                }
            }
            outLabel.text = result
        }

    }
}
