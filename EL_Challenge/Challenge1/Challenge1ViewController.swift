//
//  Challenge1ViewController.swift
//  EL_Challenge
//
//  Created by Froy on 7/14/22.
//

import UIKit

struct IpData: Decodable {
    let ip: String?
}

class Challenge1ViewController: UIViewController {
    let url = URL(string: "http://ip.jsontest.com")
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
            return resp.ip ?? "No IP"
 
        } catch {
            return "error"
        }
    }


}
