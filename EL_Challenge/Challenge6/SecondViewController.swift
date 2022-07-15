//
//  SecondViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

final class SecondViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        setupBackground()
        setupImage()
        setupBackButton()
    }

    func setupBackground() {
        view.backgroundColor = UIColor.white
    }

    func setupImage() {
        let logoImage = UIImage(named: "squareLogo")
        let imageView: UIImageView = UIImageView()
        imageView.contentMode = UIView.ContentMode.scaleAspectFit
        // imageView.frame = CGRect(x: 0, y: 0, width: 180, height: 180)
        imageView.frame.size.width = 180
        imageView.frame.size.height = 180
        imageView.center = self.view.center
        imageView.image = logoImage
        view.addSubview(imageView)
    }

    func setupBackButton() {
        let backButton = UIButton()
        backButton.frame = CGRect(x: 20, y: 100, width: 100, height: 50)
        backButton.setTitle("< Back", for: .normal)
        backButton.setTitleColor(.blue, for: .normal)
//        backButton.center = self.view.center
        backButton.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        view.addSubview(backButton)
    }

    @objc private func didTapButton() {
        self.dismiss(animated: true, completion: nil)
    }


}
