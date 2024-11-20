//
//  ViewController.swift
//  PhysioPulse
//
//  Created by Brahmjot Singh Tatla on 16/11/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Set up the appLabel with custom attributed text
        let fullText = "PhysioPulse"
        let attributedString = NSMutableAttributedString(string: fullText)
                
        // Set "Physio" to white
        attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: 6))
                
        // Set "Pulse" to color #56C1FF
        attributedString.addAttribute(.foregroundColor, value: UIColor(red: 0.337, green: 0.592, blue: 0.996, alpha: 1.0), range: NSRange(location: 6, length: 5))
                
        // Set font size to 48
        attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 48), range: NSRange(location: 0, length: fullText.count))
                
        appLabel.attributedText = attributedString
        appLabel.textAlignment = .center
        
        // Transition to RoleViewController after 2 seconds
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.goToRoleViewController()
        }
    }
    
    @objc func goToRoleViewController() {
        // Instantiate the RoleViewController
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        if let roleViewController = storyboard.instantiateViewController(withIdentifier: "RoleViewController") as? RoleViewController {
            
            // Hide the back button
            roleViewController.navigationItem.hidesBackButton = true
            
            // Push the RoleViewController onto the navigation stack
            self.navigationController?.pushViewController(roleViewController, animated: true)
        } else {
            print("Error: RoleViewController could not be instantiated. Check the storyboard ID.")
        }
    }
}
