//
//  WelcomeViewController.swift
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = ""
        
        //MARK: - Animation with Timer
        var index = 0.0
        let text = "⚡️FlashChat"
        for letter in text {
            Timer.scheduledTimer(withTimeInterval: 0.1 * index, repeats: false){ timer in
                self.titleLabel.text?.append(letter)
            }
            index += 1
        }
        
        
    }
    

}
