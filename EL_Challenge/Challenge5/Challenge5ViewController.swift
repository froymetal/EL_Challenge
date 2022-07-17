//
//  Challenge5ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit
import SwiftUI

class Challenge5ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func callSwiftUIScreen(_ sender: Any) {
        let swiftUIViewController = UIHostingController(rootView: Challenge5SwiftUIView())
        present(swiftUIViewController, animated: true)
    }
}
