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
        case getBelicaData = "GetBelicaData"
        case getBorisData = "GetBorisData"
        case getCountessData = "GetCountessData"
    }
    
    let resources: Dictionary<Methods, Resource>
    let apiClient = APIClient()
    
    init() {
        var resourcesDictionary = Dictionary<Methods, Resource>()
        if let getAllItemsURL = URL(string: "https://api.playfault.com/items") {
            resourcesDictionary[Methods.getAllItems] = Resource(name: Methods.getAllItems.rawValue, url: getAllItemsURL, method: "GET")
        }
        if let getBelicaDataURL = URL(string: "https://api.playfault.com/heroData/LtBelica") {
            resourcesDictionary[Methods.getBelicaData] = Resource(name: Methods.getBelicaData.rawValue, url: getBelicaDataURL, method: "GET")
        }
        if let getBorisDataURL = URL(string: "https://api.playfault.com/heroData/Boris") {
            resourcesDictionary[Methods.getBorisData] = Resource(name: Methods.getBorisData.rawValue, url: getBorisDataURL, method: "GET")
        }
        if let getCountessDataURL = URL(string: "https://api.playfault.com/heroData/Countess") {
            resourcesDictionary[Methods.getCountessData] = Resource(name: Methods.getCountessData.rawValue, url: getCountessDataURL, method: "GET")
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
    
    func getBelicaData(_ completion: @escaping ((Result<Belica>) -> Void)) {
        if let resource = resources[Methods.getBelicaData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let belicaData = try JSONDecoder().decode(Belica.self, from: data)
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
    
    func getBorisData(_ completion: @escaping ((Result<Boris>) -> Void)) {
        if let resource = resources[Methods.getBorisData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let borisData = try JSONDecoder().decode(Boris.self, from: data)
                        completion(.success(borisData))
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
    
    func getCountessData(_ completion: @escaping ((Result<Countess>) -> Void)) {
        if let resource = resources[Methods.getCountessData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let countessData = try JSONDecoder().decode(Countess.self, from: data)
                        completion(.success(countessData))
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
