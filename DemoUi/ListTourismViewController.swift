//
//  ListTourismViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 06/04/2023.
//

import UIKit

class ListTourismViewController: UIViewController, UITableViewDataSource {

    @IBOutlet weak var table: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self

        // Do any additional setup after loading the view.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tourism = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = tourism.title
        cell.iconImageView.image = UIImage(named: tourism.imageName)
        return cell
    }
}

extension ListTourismViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let itemDetailCollection = self.storyboard?.instantiateViewController(withIdentifier: "ItemDetailViewController") as! ItemDetailViewController
        itemDetailCollection.touris = data[indexPath.row]
        navigationController?.pushViewController(itemDetailCollection, animated: true)
    }
}
