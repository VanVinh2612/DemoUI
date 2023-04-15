//
//  SecondViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 04/04/2023.
//

import UIKit

//protocol TextDelegate: AnyObject {
//    func secondText(_ input: String?)
//}

class SecondViewController: UIViewController {
        
    @IBOutlet private weak var secondTextField: UITextField!
    
//    weak var delegate: TextDelegate?
    var receiveData: String?
    var textData: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        secondTextField?.text = receiveData
    }
    
    @IBAction func didTapPop(_ sender: UIButton) {
        textData?(secondTextField.text ?? "")
//        delegate?.secondText(secondTextField.text ?? "")
        navigationController?.popViewController(animated: true)
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
