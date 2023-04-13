//
//  UrlSessionViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 12/04/2023.
//

import UIKit

class UrlSessionViewController: UIViewController {

    @IBOutlet weak var profileTableView: UITableView!

    let networker = NetWorker()
    var userData: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
//        print(fetchUser().count)
        profileTableView.dataSource = self
        profileTableView.register(ProfileTableViewCell.nib(), forCellReuseIdentifier: ProfileTableViewCell.identifies)
//        print("Size: \(userData.count)")
        fetchUser()
    }
    
    func fetchUser(){
        networker.getUser(completion: {(user, error) in
            if error != nil {
                self.userData = []
                print("Error")
                return
            }
            self.userData = user!
            self.profileTableView.reloadData()
        })
    }
}

extension UrlSessionViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return userData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let userCell = tableView.dequeueReusableCell(withIdentifier: ProfileTableViewCell.identifies, for: indexPath) as! ProfileTableViewCell
        userCell.setUp(with: userData[indexPath.row])
//        userCell.firstNameLabel.text = userData[indexPath.row].first_name
//        userCell.lastNameLabel.text = userData[indexPath.row].last_name
//        userCell.ageLabel.text = String(userData[indexPath.row].age)
       
       return userCell
    }
}