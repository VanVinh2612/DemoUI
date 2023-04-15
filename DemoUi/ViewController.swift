//
//  ViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 04/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
//    func secondText(_ input: String?) {
//        textField.text = input ?? ""
//    }
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func sendData(_ sender: UIButton) {
        let secondController = self.storyboard?.instantiateViewController(withIdentifier: "second_controller") as! SecondViewController
        secondController.receiveData = textField.text ?? "Push send data"
//        secondController.delegate = self
        secondController.textData = { newValue in
            self.textField.text = newValue
        }
        navigationController?.pushViewController(secondController, animated: true)
    }
    
    @IBAction func tapNextPage(_ sender: UIButton) {
        let imageViewController = ImageViewController()
        navigationController?.pushViewController(imageViewController, animated: true)
//        imageViewController.hidesBottomBarWhenPushed = true
    }
    
    @IBAction func tapSignUp(_ sender: UIButton) {
    }
}

