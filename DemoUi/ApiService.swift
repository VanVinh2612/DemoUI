//
//  ApiService.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 14/04/2023.
//

import UIKit

class ApiService {
    
    let baseURL = "https://images.dog.ceo/breeds/spaniel-irish/n02102973_3814.jpg"
    
    func fetchImage() async throws-> UIImage {
        guard let imageURL = URL(string: baseURL) else {
            throw NetWorkerError.badResponse
        }
        
        let (data, _) = try await URLSession.shared.data(from: imageURL)
        
        guard let image = UIImage(data: data) else {
            throw NetWorkerError.badData
        }
        return image
        
    }
}
