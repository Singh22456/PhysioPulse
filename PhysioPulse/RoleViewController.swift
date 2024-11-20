//
//  RoleViewController.swift
//  PhysioPulse
//
//  Created by Brahmjot Singh Tatla on 16/11/24.
//

import UIKit

class RoleViewController: UIViewController {

    @IBOutlet weak var appLabel: UILabel!
    
    @IBOutlet weak var continueAs: UILabel!
    
    @IBOutlet weak var patientButton: UIButton!
    
    @IBOutlet weak var physioButton: UIButton!
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
                
                // Customize "Continue As" label
                continueAs.text = "Continue as"
                continueAs.textAlignment = .center
                continueAs.textColor = .white
                continueAs.font = UIFont.systemFont(ofSize: 24)
                
                // Customize Patient Button
                patientButton.setTitle("Patient", for: .normal)
                patientButton.setTitleColor(.black, for: .normal)
                patientButton.backgroundColor = .white
                patientButton.layer.cornerRadius = 10
                
                // Customize Physiotherapist Button
                physioButton.setTitle("Physiotherapist", for: .normal)
                physioButton.setTitleColor(.black, for: .normal)
                physioButton.backgroundColor = .white
                physioButton.layer.cornerRadius = 10
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
