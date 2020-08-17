//
//  FaultAPI.swift
//  Fault Build
//
//  Created by Zane on 8/4/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

class FaultAPI {
    
    static let shared = FaultAPI()
    enum Methods: String {
        case getAllItems = "GetAllItems"
        case getBelicaData = "getBelicaData"
    }
    
    let resources: Dictionary<Methods, Resource>
    let apiClient = APIClient()
    
    init() {
        var resourcesDictionary = Dictionary<Methods, Resource>()
        if let getAllItemsURL = URL(string: "https://api.playfault.com/items") {
            resourcesDictionary[Methods.getAllItems] = Resource(name: "GetAllItems", url: getAllItemsURL, method: "GET")
        }
        if let getBelicaDataURL = URL(string: "https://api.playfault.com/heroData/LtBelica") {
            resourcesDictionary[Methods.getBelicaData] = Resource(name: "GetBelicaData", url: getBelicaDataURL, method: "GET")
        }
        
        resources = resourcesDictionary
    }
    
    func getAllItems(_ completion: @escaping ((Result<GameItemDictionary>) -> Void)) {
        if let resource = resources[Methods.getAllItems] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    print("\(self) retrieved data: \(String(data: data, encoding: .utf8)) from resource: \(resource)")
                    do {
                        let items = try JSONDecoder().decode(GameItemDictionary.self, from: data)
                        completion(.success(items))
                    }
                    catch {
                        completion(.failure(error))
                    }
                case .failure(let error):
                    print("\(self) retrieve error: \(error) from resource: \(resource)")
                
                }
            }
        }
    }
    
    func getBelicaData(_ completion: @escaping ((Result<BelicaData>) -> Void)) {
        if let resource = resources[Methods.getBelicaData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let belicaData = try JSONDecoder().decode(BelicaData.self, from: data)
                        completion(.success(belicaData))
                    }
                    catch {
                        completion(.failure(error))
                    }
                    
                case .failure(let error):
                    print("\(self) retrieve error: \(error) from resource: \(resource)")
                }
            }
        }
    }
}
