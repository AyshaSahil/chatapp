//
//  WelcomeViewController.swift
//

import UIKit
import CLTypingLabel

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        let text = "⚡️FlashChat"
        
        //MARK: - Animation with Timer
        var index = 0.0
        for letter in text {
            Timer.scheduledTimer(withTimeInterval: 0.1 * index, repeats: false){ timer in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
        
        
        
    }
    

}
