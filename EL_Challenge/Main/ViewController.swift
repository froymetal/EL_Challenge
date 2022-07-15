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
        showMessage(challenge: "Challenge 4")
    }

    func showMessage(challenge: String) {
        let alert = UIAlertController(
            title: challenge,
            message: "Please check the playgroung in the code for this Exercise.",
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
}

