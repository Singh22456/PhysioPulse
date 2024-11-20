//
//  PatientViewController.swift
//  PhysioPulse
//
//  Created by Brahmjot Singh Tatla on 16/11/24.
//

import UIKit

class PatientViewController: UIViewController {

    @IBOutlet weak var appLabel: UILabel!
    
    @IBOutlet weak var loginButton: UIButton!
    
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let fullText = "PhysioPulse"
                let attributedString = NSMutableAttributedString(string: fullText)
                attributedString.addAttribute(.foregroundColor, value: UIColor.white, range: NSRange(location: 0, length: 6)) // "Physio" in white
                attributedString.addAttribute(.foregroundColor, value: UIColor(red: 0.337, green: 0.592, blue: 0.996, alpha: 1.0), range: NSRange(location: 6, length: 5)) // "Pulse" in blue
                attributedString.addAttribute(.font, value: UIFont.boldSystemFont(ofSize: 48), range: NSRange(location: 0, length: fullText.count))
                appLabel.attributedText = attributedString
                appLabel.textAlignment = .center
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.black, for: .normal)
        loginButton.backgroundColor = .white
        loginButton.layer.cornerRadius = 10
        
        // Customize Physiotherapist Button
        signUpButton.setTitle("SignUp", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 10
        setBackButtonColorToWhite()

    }
    
    func setBackButtonColorToWhite() {
        // Set the tint color of the navigation bar (affects the back button)
        self.navigationController?.navigationBar.tintColor = .white
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
