//
//  ItemDetailViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 07/04/2023.
//

import UIKit

protocol EditDetailDelegate: AnyObject {
    func updateData(update: String)
}

class ItemDetailViewController: UIViewController{

    @IBOutlet weak var titleTextLabel: UILabel!
    @IBOutlet weak var tourismImageView: UIImageView!
    @IBOutlet weak var detailTextView: UITextView!
    
    var touris: Tourism?
    weak var itemDelegate: EditDetailDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tourismImageView?.image = UIImage(named: touris?.imageName ?? "")
        titleTextLabel?.text = touris?.title
        
    }
    
    @IBAction func tapEdit(_ sender: UIButton) {
        let editItemController = self.storyboard?.instantiateViewController(withIdentifier: "EditItemViewController") as! EditItemViewController
        editItemController.textData = titleTextLabel.text
        editItemController.dataEdited = { newValue in
            self.titleTextLabel.text = newValue
            self.itemDelegate?.updateData(update: self.titleTextLabel.text ?? "")
            
        }
        navigationController?.pushViewController(editItemController, animated: true)
    }
    
}
