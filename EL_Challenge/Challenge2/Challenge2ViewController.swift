//
//  Challenge2ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

class Challenge2ViewController: UIViewController {

    @IBOutlet weak var colorSegmentControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        changeColor(colorSegmentControl as Any)
    }

    @IBAction func changeColor(_ sender: Any) {

        let itemSelected = colorSegmentControl.selectedSegmentIndex

        switch itemSelected {
        case 0:
            colorSegmentControl.selectedSegmentTintColor = UIColor.red
        case 1:
            colorSegmentControl.selectedSegmentTintColor = UIColor.blue
        case 2:
            colorSegmentControl.selectedSegmentTintColor = UIColor.orange
        case 3:
            colorSegmentControl.selectedSegmentTintColor = UIColor.yellow
        case 4:
            colorSegmentControl.selectedSegmentTintColor = UIColor.purple
        case 5:
            colorSegmentControl.selectedSegmentTintColor = UIColor.gray
        default:
            print("Error")
        }
    }

}
