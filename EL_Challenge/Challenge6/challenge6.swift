//
//  challenge6.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
            setupBackground()
            setupButton()
    }

    func setupBackground() {
        view.backgroundColor = UIColor.white
    }

    func setupButton() {
        let showSecondVCButton = UIButton()
        showSecondVCButton.frame = CGRect(x: 100, y: 100, width: 300, height: 50)
        showSecondVCButton.setTitle("Go to Second View Controller", for: .normal)
        showSecondVCButton.backgroundColor = UIColor.yellow
        showSecondVCButton.setTitleColor(.black, for: .normal)
        showSecondVCButton.center = self.view.center
        showSecondVCButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(showSecondVCButton)

        //Back Button
        let backButton = UIButton()
        backButton.frame = CGRect(x: 20, y: 100, width: 100, height: 50)
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(.blue, for: .normal)
        backButton.addTarget(self, action: #selector(backTapButton), for: .touchUpInside)
        view.addSubview(backButton)
    }

    @objc private func didTapButton() {
        let rootVC = SecondViewController()
        let navVC = UINavigationController(rootViewController: rootVC)
        navVC.modalPresentationStyle = .fullScreen
        present(navVC, animated: true)

    }

    @objc private func backTapButton() {
        self.dismiss(animated: true, completion: nil)
    }

}
