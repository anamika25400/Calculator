

import UIKit


class ViewController: UIViewController {
    
    
    @IBOutlet weak var outPutLbl: UILabel!
    @IBOutlet weak var FirstNumTextField: UITextField!
    @IBOutlet weak var SecNumTextField: UITextField!
    
    
    @IBOutlet weak var Add: UIButton!
    
    @IBOutlet weak var Subtract: UIButton!
    @IBOutlet weak var Multiply: UIButton!
    @IBOutlet weak var Divide: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.navigationController?.navigationBar.isTranslucent = false

        Add.layer.cornerRadius = 15
        Subtract.layer.cornerRadius = 15
        Multiply.layer.cornerRadius = 15
        Divide.layer.cornerRadius = 15
    }
    
    
    @IBAction func Add(_ sender: UIButton) {
        
        let firstNbStr: String = FirstNumTextField.text!
        
        let SecNbStr: String = SecNumTextField.text!
        if firstNbStr.isEmpty || SecNbStr.isEmpty{
            return
        }
        
        let firstNbDbl: Double = Double(firstNbStr)!
        let SecNbDbl: Double = Double(SecNbStr)!
        let answer = firstNbDbl + SecNbDbl
        outPutLbl.text = String(answer)
        
    }
    
    
    @IBAction func Subtract(_ sender: UIButton) {
        //let firstNbStr: String = FirstNumTextField.text!
        
        
        if let firstNbStr = FirstNumTextField.text, !firstNbStr.isEmpty, let SecNbStr = SecNumTextField.text, !SecNbStr.isEmpty{
            let fn: Double = Double(firstNbStr)!
            let sn: Double = Double(SecNbStr)!
            outPutLbl.text = String(fn - sn)
            print("FN non Empty")
        }
        else{
            print("FN Empty")
        }
        
        /*let firstNbDbl: Double = Double(firstNbStr)!
        let SecNbDbl: Double = Double(SecNbStr)!
        let answer = firstNbDbl - SecNbDbl
        outPutLbl.text = String(answer)*/
        
    }
    
    
    @IBAction func Multiply(_ sender: UIButton) {
        
        let firstNbStr: String = FirstNumTextField.text!
        let SecNbStr: String = SecNumTextField.text!
        if firstNbStr.isEmpty || SecNbStr.isEmpty{
            return
        }
        
        let firstNbDbl: Double = Double(firstNbStr)!
        let SecNbDbl: Double = Double(SecNbStr)!
        let answer = firstNbDbl * SecNbDbl
        outPutLbl.text = String(answer)
        
    }
    
    @IBAction func Divide(_ sender: UIButton) {
        let firstNbStr: String = FirstNumTextField.text!
        let SecNbStr: String = SecNumTextField.text!
        if firstNbStr.isEmpty || SecNbStr.isEmpty{
            outPutLbl.text = "Math Error"
        }
        
        let firstNbDbl: Double = Double(firstNbStr)!
        let SecNbDbl: Double = Double(SecNbStr)!
        let answer = firstNbDbl / SecNbDbl
        outPutLbl.text = String(answer)
        
    }
    
    
    @IBAction func NextPage(_ sender: Any) {
            
        let  vc = self.storyboard?.instantiateViewController(identifier: "ImageViewController") as!ImageViewController
            self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

