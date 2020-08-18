//
//  DataRespository.swift
//  Fault Build
//
//  Created by Zane on 8/4/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation

final class FaultDataRepository {
    static let shared: FaultDataRepository = {
        let instance = FaultDataRepository()
        return instance
    }()
//    private var gameItems = [String: GameItem]()
//    private var sortedGameItems = [(String, GameItemData)]()
    private var gameItems = [String: GameItem]()
    private var gameItemsFactionDictionary = [String: [GameItem]]()
    private var sortedGameItems = [GameItem]()
    private var heroesDictionary = [String: Hero]()
    
    func updateGameItems(completion: @escaping (() -> Void)) {
        FaultAPI.shared.getAllItems { (result) in
            switch result {
            case .success(let items):
                print("\(self) retrieved items:")
                dump(items)
                self.initGameItemsFromResponseDictionary(responseDictionary: items)
                completion()
            case .failure(let error):
                print("\(self) retrieve error on get items: \(error)")
            }
        }
    }

    func initGameItemsFromResponseDictionary(responseDictionary: GameItemDictionary) {
        var gameItemDictionary = [String: GameItem]()
        var gameItemFactionDictionary = [String: [GameItem]]()
        var consumablesArray = [GameItem]()
        var neutralArray = [GameItem]()
        var baseItemsArray = [GameItem]()
        var redFactionArray = [GameItem]()
        var blueFactionArray = [GameItem]()
        var purpleFactionArray = [GameItem]()
        var greenFactionArray = [GameItem]()
        var whiteFactionArray = [GameItem]()
        
        for gameItem in responseDictionary {
            let item = GameItem(itemID: gameItem.key, gameItemData: gameItem.value)
            gameItemDictionary[gameItem.key] = item
            
            switch(item.color) {
            case FaultFaction.none:
                if item.parents.count == 0 {
                    if item.treeID == 10 {
                        consumablesArray.append(item)
                    }
                    else {
                        neutralArray.append(item)
                    }
                }
                else {
                    baseItemsArray.append(item)
                }
                
            case FaultFaction.blue:
                blueFactionArray.append(item)
                
            case FaultFaction.green:
                greenFactionArray.append(item)
                
            case FaultFaction.purple:
                purpleFactionArray.append(item)
                
            case FaultFaction.red:
                redFactionArray.append(item)
                
            case FaultFaction.white:
                whiteFactionArray.append(item)
                
            default :
                break
            }
        }
        gameItems = gameItemDictionary
        gameItemFactionDictionary[GameItemType.consumableItems.description] = consumablesArray
        gameItemFactionDictionary[GameItemType.neutralItems.description] = neutralArray
        gameItemFactionDictionary[GameItemType.baseItems.description] = baseItemsArray
        gameItemFactionDictionary[GameItemType.blueItems.description] = blueFactionArray
        gameItemFactionDictionary[GameItemType.greenItems.description] = greenFactionArray
        gameItemFactionDictionary[GameItemType.purpleItems.description] = purpleFactionArray
        gameItemFactionDictionary[GameItemType.redItems.description] = redFactionArray
        gameItemFactionDictionary[GameItemType.whiteItems.description] = whiteFactionArray
        self.gameItemsFactionDictionary = gameItemFactionDictionary
    }
    
//    Needs rework and to implement closures and activity indicators
    func getGameItems() -> [String: GameItem] {
        return self.gameItems
    }
    
    //Needs rework and to implement closures and activity indicators
    func getSortedGameItems() -> [GameItem] {
        if self.gameItems.count != 0 &&
            (self.sortedGameItems.count == 0 || self.sortedGameItems.count != self.gameItems.count) {
            let sorted = self.gameItems.sorted(by: {$0.key < $1.key})
            var sortedItems = [GameItem]()
            for gameItem in sorted {
                sortedItems.append(gameItem.1)
            }
            self.sortedGameItems = sortedItems
        }
        return self.sortedGameItems
    }
    
    func getGameItemsFactionDictionary() -> [String: [GameItem]] {
        return self.gameItemsFactionDictionary
    }
    
    func getHeroesDictionary() -> [String: Hero] {
        return self.heroesDictionary
    }
    
    func getHeroes(completion: @escaping (() -> Void)) {
        FaultAPI.shared.getBelicaData() { (result) in
            switch result {
            case .success(let belica):
                print("\(self) retrieved Belica data:")
                dump(belica)
                let belica = Belica(belicaData: belica)
                self.heroesDictionary[HeroName.belica.rawValue] = belica
                completion()
            case .failure(let error):
                print("\(self) retrieve error on get Belica data: \(error)")
            }
        }
    }
    
    //Needs rework and to implement closures and activity indicators
//    func getGameItems() -> GameItemDictionary {
//        //        if gameItems.count == 0 {
//        //            updateGameItems()
//        //        }
//        return self.gameItems
//    }
    
    //Needs rework and to implement closures and activity indicators
//    func getSortedGameItems() -> [(key: String, value: GameItemData)] {
//        //        if self.gameItems.count == 0 {
//        //            self.getGameItems()
//        //        }
//        if self.gameItems.count != 0 &&
//            (self.sortedGameItems.count == 0 || self.sortedGameItems.count != self.gameItems.count) {
//            self.sortedGameItems = self.gameItems.sorted(by: {$0.key < $1.key})
//        }
//        return self.sortedGameItems
//    }
}
