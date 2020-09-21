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
        case getDekkerData = "GetDekkerData"
        case getGideonData = "GetGideonData"
        case getGreystoneData = "GetGreystoneData"
        case getGrimExeData = "GetGrimExeData"
        case getKhaimeraData = "GetKhaimeraData"
        case getKwangData = "GetKwangData"
        case getMurdockData = "GetMurdockData"
        case getMurielData = "GetMurielData"
        case getNarbashData = "GetNarbashData"
        case getSevarogData = "GetSevarogData"
        case getSparrowData = "GetSparrowData"
        case getSteelData = "GetSteelData"
        case getTwinblastData = "GetTwinblastData"
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
        if let getDekkerDataURL = URL(string: "https://api.playfault.com/heroData/Dekker") {
            resourcesDictionary[Methods.getDekkerData] = Resource(name: Methods.getDekkerData.rawValue, url: getDekkerDataURL, method: "GET")
        }
        if let getGideonDataURL = URL(string: "https://api.playfault.com/heroData/Gideon") {
            resourcesDictionary[Methods.getGideonData] = Resource(name: Methods.getGideonData.rawValue, url: getGideonDataURL, method: "GET")
        }
        if let getGreystoneDataURL = URL(string: "https://api.playfault.com/heroData/Greystone") {
            resourcesDictionary[Methods.getGreystoneData] = Resource(name: Methods.getGreystoneData.rawValue, url: getGreystoneDataURL, method: "GET")
        }
        if let getGrimExeDataURL = URL(string: "https://api.playfault.com/heroData/GRIMexe") {
            resourcesDictionary[Methods.getGrimExeData] = Resource(name: Methods.getGrimExeData.rawValue, url: getGrimExeDataURL, method: "GET")
        }
        if let getKhaimeraDataURL = URL(string: "https://api.playfault.com/heroData/Khaimera") {
            resourcesDictionary[Methods.getKhaimeraData] = Resource(name: Methods.getKhaimeraData.rawValue, url: getKhaimeraDataURL, method: "GET")
        }
        if let getKwangDataURL = URL(string: "https://api.playfault.com/heroData/Kwang") {
            resourcesDictionary[Methods.getKwangData] = Resource(name: Methods.getKwangData.rawValue, url: getKwangDataURL, method: "GET")
        }
        if let getMurdockDataURL = URL(string: "https://api.playfault.com/heroData/Murdock") {
            resourcesDictionary[Methods.getMurdockData] = Resource(name: Methods.getMurdockData.rawValue, url: getMurdockDataURL, method: "GET")
        }
        if let getMurielDataURL = URL(string: "https://api.playfault.com/heroData/Muriel") {
            resourcesDictionary[Methods.getMurielData] = Resource(name: Methods.getMurielData.rawValue, url: getMurielDataURL, method: "GET")
        }
        if let getNarbashDataURL = URL(string: "https://api.playfault.com/heroData/Narbash") {
            resourcesDictionary[Methods.getNarbashData] = Resource(name: Methods.getNarbashData.rawValue, url: getNarbashDataURL, method: "GET")
        }
        if let getSevarogDataURL = URL(string: "https://api.playfault.com/heroData/Sevarog") {
            resourcesDictionary[Methods.getSevarogData] = Resource(name: Methods.getSevarogData.rawValue, url: getSevarogDataURL, method: "GET")
        }
        if let getSparrowDataURL = URL(string: "https://api.playfault.com/heroData/Sparrow") {
            resourcesDictionary[Methods.getSparrowData] = Resource(name: Methods.getSparrowData.rawValue, url: getSparrowDataURL, method: "GET")
        }
        if let getSteelDataURL = URL(string: "https://api.playfault.com/heroData/Steel") {
            resourcesDictionary[Methods.getSteelData] = Resource(name: Methods.getSteelData.rawValue, url: getSteelDataURL, method: "GET")
        }
        if let getTwinblastDataURL = URL(string: "https://api.playfault.com/heroData/Twinblast") {
            resourcesDictionary[Methods.getTwinblastData] = Resource(name: Methods.getTwinblastData.rawValue, url: getTwinblastDataURL, method: "GET")
        }
        self.resources = resourcesDictionary
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
    
    func getDekkerData(_ completion: @escaping ((Result<Dekker>) -> Void)) {
        if let resource = resources[Methods.getDekkerData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let dekkerData = try JSONDecoder().decode(Dekker.self, from: data)
                        completion(.success(dekkerData))
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
    
    func getGideonData(_ completion: @escaping ((Result<Gideon>) -> Void)) {
        if let resource = resources[Methods.getGideonData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let gideonData = try JSONDecoder().decode(Gideon.self, from: data)
                        completion(.success(gideonData))
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
    
    func getGreystoneData(_ completion: @escaping ((Result<Greystone>) -> Void)) {
        if let resource = resources[Methods.getGreystoneData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let greystoneData = try JSONDecoder().decode(Greystone.self, from: data)
                        completion(.success(greystoneData))
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
    
    func getGrimExeData(_ completion: @escaping ((Result<GrimExe>) -> Void)) {
        if let resource = resources[Methods.getGrimExeData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let grimExeData = try JSONDecoder().decode(GrimExe.self, from: data)
                        completion(.success(grimExeData))
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
    
    func getKhaimeraData(_ completion: @escaping ((Result<Khaimera>) -> Void)) {
        if let resource = resources[Methods.getKhaimeraData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let khaimeraData = try JSONDecoder().decode(Khaimera.self, from: data)
                        completion(.success(khaimeraData))
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
    
    func getKwangData(_ completion: @escaping ((Result<Kwang>) -> Void)) {
        if let resource = resources[Methods.getKwangData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let kwangData = try JSONDecoder().decode(Kwang.self, from: data)
                        completion(.success(kwangData))
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
    
    func getMurdockData(_ completion: @escaping ((Result<Murdock>) -> Void)) {
        if let resource = resources[Methods.getMurdockData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let murdockData = try JSONDecoder().decode(Murdock.self, from: data)
                        completion(.success(murdockData))
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
    
    func getMurielData(_ completion: @escaping ((Result<Muriel>) -> Void)) {
        if let resource = resources[Methods.getMurielData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let murielData = try JSONDecoder().decode(Muriel.self, from: data)
                        completion(.success(murielData))
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
    
    func getNarbashData(_ completion: @escaping ((Result<Narbash>) -> Void)) {
        if let resource = resources[Methods.getNarbashData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let narbashData = try JSONDecoder().decode(Narbash.self, from: data)
                        completion(.success(narbashData))
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
    
    func getSevarogData(_ completion: @escaping ((Result<Sevarog>) -> Void)) {
        if let resource = resources[Methods.getSevarogData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let sevarogData = try JSONDecoder().decode(Sevarog.self, from: data)
                        completion(.success(sevarogData))
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
    
    func getSparrowData(_ completion: @escaping ((Result<Sparrow>) -> Void)) {
        if let resource = resources[Methods.getSparrowData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let sparrowData = try JSONDecoder().decode(Sparrow.self, from: data)
                        completion(.success(sparrowData))
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
    
    func getSteelData(_ completion: @escaping ((Result<Steel>) -> Void)) {
        if let resource = resources[Methods.getSteelData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let steelData = try JSONDecoder().decode(Steel.self, from: data)
                        completion(.success(steelData))
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
    
    func getTwinblastData(_ completion: @escaping ((Result<Twinblast>) -> Void)) {
        if let resource = resources[Methods.getTwinblastData] {
            apiClient.load(resource) { (result) in
                switch result {
                case .success(let data):
                    do {
                        let twinblastData = try JSONDecoder().decode(Twinblast.self, from: data)
                        completion(.success(twinblastData))
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
