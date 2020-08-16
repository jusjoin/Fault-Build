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
        case getHero = "GetHero"
    }
    
    let resources: Dictionary<Methods, Resource>
    let apiClient = APIClient()
    
    init() {
        var resourcesDictionary = Dictionary<Methods, Resource>()
        if let getAllItemsURL = URL(string: "https://api.playfault.com/items") {
            resourcesDictionary[Methods.getAllItems] = Resource(name: "GetAllItems", url: getAllItemsURL, method: "GET")
        }
        if let getHero = URL(string: "https://api.playfault.com/heroData/") {
            resourcesDictionary[Methods.getHero] = Resource(name: "GetHero", url: getHero, method: "GET")
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
    
    func getHero(heroName:String, _ completion: @escaping ((Result<HeroData>) -> Void)) {
        if let resource = resources[Methods.getHero] {
            let resourceNameForHero = resource.name + heroName
            if let resourceURLForHero = URL(string: resource.url.absoluteString + heroName) {
                let resourceForHero = Resource(name: resourceNameForHero, url: resourceURLForHero, method: resource.method)
                apiClient.load(resourceForHero) { (result) in
                    switch result {
                    case .success(let data):
                        do {
                            let hero = try JSONDecoder().decode(HeroData.self, from: data)
                            completion(.success(hero))
                        }
                        catch {
                            completion(.failure(error))
                        }
                        
                    case .failure(let error):
                        print("\(self) retrieve error: \(error) from resource: \(resourceForHero)")
                    }
                }
            }
            
        }
    }
}
