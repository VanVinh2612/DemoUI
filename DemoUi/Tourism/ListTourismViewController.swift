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
        
        tourismTableView.register(TourismTableViewCell.nib(), forCellReuseIdentifier: TourismTableViewCell.identifier)
        tourismTableView.dataSource = self
        tourismTableView.delegate = self

    }
}

extension ListTourismViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataTourism.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let tourism = dataTourism[indexPath.row]
        let tourismCell = tableView.dequeueReusableCell(withIdentifier: "tourismCell", for: indexPath) as! TourismTableViewCell
        tourismCell.titleLabel.text = tourism.title
        tourismCell.iconImageView.image = UIImage(named: tourism.imageName)
        return tourismCell
    }
}

extension ListTourismViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let itemDetailCollection = self.storyboard?.instantiateViewController(withIdentifier: "ItemDetailViewController") as! ItemDetailViewController
        itemDetailCollection.touris = dataTourism[indexPath.row]
        rowNumber = indexPath.row
        itemDetailCollection.itemDelegate = self
        navigationController?.pushViewController(itemDetailCollection, animated: true)
    } 
}

extension ListTourismViewController: EditDetailDelegate {
    func updateData(update: String) {
        dataTourism[rowNumber].title = update
        tourismTableView.reloadData()
    }
}

