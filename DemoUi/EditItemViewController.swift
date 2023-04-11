//
//  EditItemViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 07/04/2023.
//

import UIKit



class EditItemViewController: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    var textData: String?
    var dataEdited: ((String?) -> Void)?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.text = textData
        
    }
    
    @IBAction func tapSave(_ sender: UIButton) {
        dataEdited?(textField.text)
        navigationController?.popViewController(animated: true)
    }
}
