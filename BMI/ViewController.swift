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
    
    @IBOutlet weak var calculationBtn: UIButton!

    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        makeUI()
        // Do any additional setup after loading the view.
        
    }
    func makeUI(){
        heightTextField.delegate = self
        weightTextField.delegate = self
        mainLabel.text = "키와 몸무게를 입력해 주세요"
        calculationBtn.clipsToBounds = true //버튼 둥긇게하기 위함
        calculationBtn.layer.cornerRadius = 5
        calculationBtn.setTitle("BMI 계산하기", for:.normal)
        heightTextField.placeholder = "cm 단위로 설정해주세요"
        weightTextField.placeholder = "kg 단위로 설정해주세요"
        
        
        
    }

    @IBAction func calcuBtnTapped(_ sender: UIButton) {
        
        
    }
    
    //직접 세그웨이로 다음 화면으로 넘어가기 허락
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        
        if heightTextField.text == "" || weightTextField.text == ""{
            mainLabel.text = "키와 몸무게를 입력해야 합니다!!"
            mainLabel.textColor = UIColor.red
            return false
        }
        mainLabel.text = "키와 몸무게를 입력해 주세요"
        mainLabel.textColor = UIColor.black
        return true
        
    }
    //데이터 전달
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSecondVC" {
            //secondVC 접근 방법
           let secondVC = segue.destination as! SecondViewController //typecasting해서 넣음
            
        }
        heightTextField.text = ""
        weightTextField.text = ""
        
        
        
    }
    
    
    
}
extension ViewController: UITextFieldDelegate{
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        //숫자 입력 허용
        
        if Int(string) != nil || string == ""{ // string을 int 로 변환이 된다면 nil 이 아님 -> 숫자이거나 빈문자라면 허용
            return true
        }
        //숫자 입력 안됌
        return false
    }
    
    //MARK: - keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //두개의 textField 모두 입력시 키보드 내림
        if heightTextField.text != "", weightTextField.text != ""{
            weightTextField.resignFirstResponder() //둘다 빈문자 아니면 다음으로
            return true
        }
        //위에꺼 끝냈고, 아래꺼 아직 안쳤으면 아래꺼 하기
        else if heightTextField.text != ""{
            weightTextField.becomeFirstResponder()
            return true
        }
        //맨위 텍스트필드 비었으면 키보드 안내림
        return false
        
    
    }
    //화면에 유저의 터치시 두 텍스트필드 종료 --> 키보드 종료 의미
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        heightTextField.resignFirstResponder()
        weightTextField.resignFirstResponder()
    }
    
    

    
    
    
    
}

