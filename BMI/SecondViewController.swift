//
//  SecondViewController.swift
//  BMI
//
//  Created by 박다미 on 2022/11/07.
//

import UIKit

class SecondViewController: UIViewController {

    
    @IBOutlet weak var bmiNumLabel: UILabel!
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var backBtn: UIButton!
    
    
    var bmi : Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()

        
    }
    func makeUI(){
        bmiNumLabel.clipsToBounds = true
        bmiNumLabel.layer.cornerRadius = 8
        bmiNumLabel.backgroundColor = .gray
        
        backBtn.clipsToBounds = true
        backBtn.layer.cornerRadius = 5
        
        guard let bmi = bmi else {return}
        bmiNumLabel.text = String(bmi)
        
    }
    
    @IBAction func backBtnTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
  

}
