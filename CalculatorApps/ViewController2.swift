

import UIKit

class ViewController2: UIViewController {
    let name = "Anu"
    let email = "anu@gmail.com"
    
    @IBOutlet weak var Name: UITextField!
    
    @IBOutlet weak var Email: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.navigationController?.navigationBar.isTranslucent = false
        // Do any additional setup after loading the view.
    }
    


    @IBAction func Login(_ sender: Any) {
        if((Name.text!=="")&&(Email.text!=="")){
            let alert = UIAlertController(title: "Login Error", message: "Name and Email is Empty...",preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
            self.present(alert,animated: true,completion: nil)
        }
        else if (Email.text!==""){
            let alert = UIAlertController(title: "Login Error", message: "User Email is empty...", preferredStyle: UIAlertController.Style.alert)
            alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
              self.present(alert,animated: true,completion: nil)
        }
        else{
            if ((Name.text!==name) && (Email.text!==email)){
            
    let  vc = self.storyboard?.instantiateViewController(identifier: "ViewController") as!ViewController
        self.navigationController?.pushViewController(vc, animated: true)

        
    }
            else{
                let alert = UIAlertController(title: "Login Error", message: "User Email is invalid...", preferredStyle: UIAlertController.Style.alert)
                alert.addAction(UIAlertAction(title: "ok", style: UIAlertAction.Style.default, handler: nil))
                self.present(alert,animated: true,completion: nil)
                
            }
    }

}
}
