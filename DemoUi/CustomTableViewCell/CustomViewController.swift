//
//  CustomViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 11/04/2023.
//

import UIKit

class CustomViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(ImageTableViewCell.nib(), forCellReuseIdentifier: ImageTableViewCell.identifier)
        tableView.register(TextTableViewCell.nib(), forCellReuseIdentifier: TextTableViewCell.identifier)
        
        tableView.dataSource = self
    }
}

extension CustomViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row < 5 {
            let imageCell = tableView.dequeueReusableCell(withIdentifier: ImageTableViewCell.identifier, for: indexPath) as! ImageTableViewCell
            imageCell.configure()
            return imageCell
        }
        let textCell = tableView.dequeueReusableCell(withIdentifier: TextTableViewCell.identifier, for: indexPath) as! TextTableViewCell
        textCell.setUpTitle()
        return textCell
    }
}
