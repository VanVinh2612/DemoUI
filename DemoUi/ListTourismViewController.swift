//
//  ListTourismViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 06/04/2023.
//

import UIKit

class ListTourismViewController: UIViewController {

    @IBOutlet weak var tourismTableView: UITableView!
    
    var rowNumber: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tourismTableView.dataSource = self
        tourismTableView.delegate = self

    }
}

extension ListTourismViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tourism = data[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TourismTableViewCell", for: indexPath) as! CustomTableViewCell
        cell.label.text = tourism.title
        cell.iconImageView.image = UIImage(named: tourism.imageName)
        return cell
    }
}

extension ListTourismViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let itemDetailCollection = self.storyboard?.instantiateViewController(withIdentifier: "ItemDetailViewController") as! ItemDetailViewController
        itemDetailCollection.touris = data[indexPath.row]
//        rowNumber = indexPath.row
        itemDetailCollection.itemDelegate = self
        navigationController?.pushViewController(itemDetailCollection, animated: true)
    } 
}

extension ListTourismViewController: EditDetailDelegate {
    func updateData(update: String) {
        data[rowNumber].title = update
        tourismTableView.reloadData()
    }
}

