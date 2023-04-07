//
//  ItemDetailViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 07/04/2023.
//

import UIKit

class ItemDetailViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    var touris: Tourism?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView?.image = UIImage(named: touris?.imageName ?? "")
        textLabel?.text = touris?.title
        
    }
    
    @IBAction func tapEdit(_ sender: UIButton) {
        let editItemController = self.storyboard?.instantiateViewController(withIdentifier: "EditItemViewController") as! EditItemViewController
        editItemController.textData = textLabel.text
        editItemController.dataEdited = { newValue in
            self.textLabel.text = newValue
        }
        navigationController?.pushViewController(editItemController, animated: true)
    }
}
