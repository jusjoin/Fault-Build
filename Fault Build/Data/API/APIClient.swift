//
//  APIClient.swift
//  Fault Build
//
//  Created by Zane on 8/4/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

final class APIClient {
    func load(_ resource: Resource, result: @escaping ((Result<Data>)  -> Void)) {
        let request = URLRequest(resource)
        let task = URLSession.shared.dataTask(with: request) { (data, response, error) in
            guard let data = data else {
                result(.failure(APIClientError.noData))
                return
            }
            if let error = error {
                result(.failure(error))
                return
            }
            result(.success(data))
        }
        task.resume()
    }
}
