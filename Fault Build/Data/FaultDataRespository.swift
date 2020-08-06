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
    private var sortedGameItems = [GameItem]()
    
    func updateGameItems(completion: @escaping (() -> Void)) {
        FaultAPI().getAllItems { (result) in
            switch result {
            case .success(let items):
                print("\(self) retrieved items:")
                dump(items)
//                self.gameItems = items
                self.initGameItemsFromResponseDictionary(responseDictionary: items)
                completion()
            case .failure(let error):
                print("\(self) retrieve error on get items: \(error)")
            }
        }
    }

    func initGameItemsFromResponseDictionary(responseDictionary: GameItemDictionary) {
        var gameItemDictionary = [String: GameItem]()
        for gameItem in responseDictionary {
            gameItemDictionary[gameItem.key] = GameItem(itemID: gameItem.key, gameItemData: gameItem.value)
        }
        self.gameItems = gameItemDictionary
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
