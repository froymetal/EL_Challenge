//
//  ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func challenge4Message(_ sender: Any) {
        let message = """
How to return an array string as an array of uppercase string. \n\n
print(["alpha","beta","gamma"].map({ $0.uppercased()}))
"""
        showMessage(challenge: "Challenge 4", message: message)
    }

    func showMessage(challenge: String, message: String) {
        let alert = UIAlertController(
            title: challenge,
            message: message,
            preferredStyle: .alert)
        let btn = UIAlertAction(title: "OK", style: .default, handler: nil)
        alert.addAction(btn)
        self.present(alert, animated: true)
    }


    @IBAction func showChallenge6(_ sender: Any) {
        let rootVC = FirstViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)
    }


    @IBAction func showChallenge7(_ sender: Any) {
        let message = "Please check the playgroung in the code for this Exercise."
        showMessage(challenge: "Challenge 7", message: message)
    }
}

