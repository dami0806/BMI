//
//  ViewController.swift
//  BMI
//
//  Created by 박다미 on 2022/11/03.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var weightTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        heightTextField.delegate = self
        weightTextField.delegate = self
        // Do any additional setup after loading the view.
        
    }

    @IBAction func calcuBtnTapped(_ sender: UIButton) {
    }
    
    
    
    
}
extension ViewController: UITextFieldDelegate{
    
}

