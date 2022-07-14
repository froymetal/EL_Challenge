//
//  Challenge1ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

struct IpData: Codable {
    let ip: String?
}

struct UserData: Codable {
    let id: Int?
    let title: String?
}

class Challenge1ViewController: UIViewController {
    // This url has a https security error don't allowed by Apple
    let url = URL(string: "http://ip.jsontest.com")
//    let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1")
    private var response: String = ""

    @IBOutlet weak var ipLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        Task.init(priority: .background, operation: {
            let ip = await fetchResponse()
            self.response = ip
            DispatchQueue.main.async {
                self.ipLabel.text = self.response
            }
        })
    }

    private func fetchResponse() async -> String {
        guard url != nil else {
            return ""
        }

        do {
            let (data, _) = try await URLSession.shared.data(from: url!)
            let resp = try JSONDecoder().decode(IpData.self, from: data)
            self.response = resp.ip ?? "No IP"
//            let resp = try JSONDecoder().decode(UserData.self, from: data)
//            self.response = resp.title ?? "No Title"
            return self.response

        } catch {
            return "error"
        }
    }


}
