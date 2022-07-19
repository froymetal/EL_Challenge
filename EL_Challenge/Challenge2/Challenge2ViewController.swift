//
//  Challenge2ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

final class Challenge2ViewController: UIViewController {

    @IBOutlet weak var colorSegmentControl: UISegmentedControl!
    @IBOutlet weak var userImage: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        changeColor(colorSegmentControl as Any)
    }

    @IBAction func changeColor(_ sender: Any) {

        let itemSelected = colorSegmentControl.selectedSegmentIndex

        switch itemSelected {
        case 0:
            updateColor(tintColor: .red)
        case 1:
            updateColor(tintColor: .blue)
        case 2:
            updateColor(tintColor: .orange)
        case 3:
            updateColor(tintColor: .purple)
        case 4:
            updateColor(tintColor: .purple)
        case 5:
            updateColor(tintColor: .gray)
        default:
            print("Error")
        }
    }
    
    func updateColor (tintColor: UIColor) {
        colorSegmentControl.selectedSegmentTintColor = tintColor
        userImage.tintColor = tintColor
    }
}
