//
//  NetWorker.swift
//  DemoUi
//
//  Created by Vinh Nguyen on 12/04/2023.
//

import Foundation

enum NetWorkerError: Error {
    case badResponse
    case badStatusCode(Int)
    case badData
}

class NetWorker {
    
//    static let shared = NetWorker()
//    private let session: URLSession
    
//    init() {
//        let config = URLSessionConfiguration.default
//        session = URLSession(configuration: config)
//    }
    
    func getUser(completion: @escaping ([User]?, Error?) -> (Void)) {
        let url = URL(string: "https://gist.githubusercontent.com/reinder42/932d7671859959f6363b4d9b4e18bb91/raw/306631d79a5166bb0d86b12ac7d8cc42fecb996e/users.json")!
        let session = URLSession.shared
        let task = session.dataTask(with: url, completionHandler: {data, reponse, error in
            
            if let error = error {
                DispatchQueue.main.async {
                    completion(nil, error)
                }
                return
            }
            
            guard let httpReponse = reponse as? HTTPURLResponse else {
                DispatchQueue.main.async {
                    completion(nil, NetWorkerError.badResponse)
                }
                return
            }
            guard (200...209).contains(httpReponse.statusCode) else {
                DispatchQueue.main.async {
                    completion(nil, NetWorkerError.badStatusCode(httpReponse.statusCode))
                }
                return
            }
            guard let data = data else {
                DispatchQueue.main.async {
                    completion(nil, NetWorkerError.badData)
                }
                return
            }
            
            do {
                let user = try JSONDecoder().decode([User].self, from: data)
//                let json = try JSONSerialization.jsonObject(with: data, options: [])
                DispatchQueue.main.async {
                    completion(user, nil)
                }
                print(user)
            }catch {
                print("JSON Error: \(error.localizedDescription)")
            }
        })
        task.resume()
    }
}
