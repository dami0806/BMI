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
    
    
    // 전화면에서 전달받은 데이터들
    var bmiNumber: Double?
    var adviceString: String?
    var bmiColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()

        
    }
    func makeUI(){
        bmiNumLabel.clipsToBounds = true
        bmiNumLabel.layer.cornerRadius = 8
        bmiNumLabel.backgroundColor = .gray
        backBtn.setTitle("다시 계산하기", for: .normal)
        
        backBtn.clipsToBounds = true
        backBtn.layer.cornerRadius = 5
        
        guard let bmi = bmiNumber else {return}//bmi 가 nil 이 되지 않게
        bmiNumLabel.text = String(bmi)
        adviceLabel.text = adviceString
        bmiNumLabel.backgroundColor = bmiColor
        
        
       

        
    }
    
    @IBAction func backBtnTapped(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
  

}
