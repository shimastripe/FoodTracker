//
//  ViewController.swift
//  FoodTracker
//
//  Created by shimastripe on 2019/05/06.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var mealNameLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Handle the text field's user input through delegate callbacks.
        self.nameTextField.delegate = self
    }

    // MARK: Actions
    @IBAction func setDefaultLabelText(_ sender: UIButton) {
        self.mealNameLabel.text = "Default Text"
    }
    
}

// MARK: UITextFieldDelegate
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        // Hide the keyboard.
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        self.mealNameLabel.text = textField.text
    }
}
