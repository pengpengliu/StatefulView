//
//  ViewController.swift
//  StatefulViewExample
//
//  Created by Liu Pengpeng on 2018/9/7.
//

import UIKit
import StatefulView

class ViewController: UIViewController {

    @IBOutlet weak var statefulLabel: UILabel!
    @IBOutlet weak var statefulView: UIView!
    @IBOutlet weak var statefulButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchState(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            self.statefulLabel.stateful(for: .custom({
                self.statefulLabel.text = "Ready"
            }))
            self.statefulButton.stateful(for: .none)
            self.statefulView.stateful(for: .none)
        case 1:
            self.statefulLabel.stateful(for: .custom({
                self.statefulLabel.text = "Loading..."
            }))
            self.statefulButton.stateful(for: .mask(.loading))
            self.statefulView.stateful(for: .mask(.loading))
        case 2:
            self.statefulLabel.stateful(for: .custom({
                self.statefulLabel.text = "No data."
            }))
            self.statefulButton.stateful(for: .mask(.empty))
            self.statefulView.stateful(for: .mask(.empty))
        case 3:
            self.statefulLabel.stateful(for: .custom({
                self.statefulLabel.text = "Oh no!"
            }))
            self.statefulButton.stateful(for: .mask(.error))
            self.statefulView.stateful(for: .mask(.error))
        default:
            break
        }
    }
    
}

