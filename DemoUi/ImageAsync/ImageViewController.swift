//
//  ImageViewController.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 14/04/2023.
//

import UIKit

class ImageViewController: UIViewController {

    
    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 15
        imageView.image = UIImage(systemName: "questionmark.app")
        
        Task {
            await fetchImage()
        }
        // Do any additional setup after loading the view.
    }
    
    private func fetchImage() async {
        do {
            let image = try await ApiService().fetchImage()
            await MainActor.run {
                imageView.image = image
            }
        }catch {
            print(error.localizedDescription)
        }
    }
    
    @IBAction func tapRandomImage(_ sender: UIButton) {
        Task {
            await fetchImage()
            tapRandomImage(sender)
        }
    }
    
}
