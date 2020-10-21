//
//  FaultCoreDataManager.swift
//  Fault Build
//
//  Created by Zane on 10/10/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit
import CoreData

final class FaultCoreDataManager {
    static let shared: FaultCoreDataManager = {
        let instance = FaultCoreDataManager()
        return instance
    }()

    var managedContext: NSManagedObjectContext?
    var itemBuilds: [NSManagedObject] = []
    
    private init() {
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
            return
        }
        self.managedContext = appDelegate.persistentContainer.viewContext
        self.itemBuilds = [NSManagedObject]()
    }
    
    func getItemBuild() -> ItemBuild? {

//        let build = builds.first(where: { $0.value(forKey: "buildID") as? Int == 1})
        let build = itemBuilds.first
        
        let itemBuild = ItemBuild()
        if let build = build,
           let buildID = build.value(forKeyPath: ItemBuild.keys.buildID.rawValue) as? String,
           let characterID = build.value(forKeyPath: ItemBuild.keys.characterID.rawValue) as? String,
           let items = build.value(forKeyPath: ItemBuild.keys.items.rawValue) as? [String],
           let affinity1 = build.value(forKeyPath: ItemBuild.keys.affinity1.rawValue) as? Int,
           let affinity1Level = build.value(forKeyPath: ItemBuild.keys.affinity1Level.rawValue) as? Int,
           let affinity2 = build.value(forKeyPath: ItemBuild.keys.affinity2.rawValue) as? Int,
           let affinity2Level = build.value(forKeyPath: ItemBuild.keys.affinity2Level.rawValue) as? Int {
            itemBuild.buildID = buildID
            itemBuild.characterID = characterID
            itemBuild.items = items
            itemBuild.affinity1 = affinity1
            itemBuild.affinity1Level = affinity1Level
            itemBuild.affinity2 = affinity2
            itemBuild.affinity2Level = affinity2Level
        }
        return itemBuild
    }
    
    func saveItemBuild(itemBuild: ItemBuild) {
        //        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {
        //            return
        //        }
        //        let managedContext = appDelegate.persistentContainer.viewContext
        if let managedContext = self.managedContext {
            let entity = NSEntityDescription.entity(forEntityName: "Build", in: managedContext)
            
            if let entity = entity {
                let build = NSManagedObject(entity: entity, insertInto: managedContext)
                build.setValue(itemBuild.buildID, forKeyPath: ItemBuild.keys.buildID.rawValue)
                build.setValue(itemBuild.characterID, forKeyPath: ItemBuild.keys.characterID.rawValue)
                build.setValue(itemBuild.items, forKeyPath: ItemBuild.keys.items.rawValue)
                build.setValue(itemBuild.affinity1, forKeyPath: ItemBuild.keys.affinity1.rawValue)
                build.setValue(itemBuild.affinity1Level, forKeyPath: ItemBuild.keys.affinity1Level.rawValue)
                build.setValue(itemBuild.affinity2, forKeyPath: ItemBuild.keys.affinity2.rawValue)
                build.setValue(itemBuild.affinity2Level, forKeyPath: ItemBuild.keys.affinity2Level.rawValue)
                
                do {
                    try managedContext.save()
                    itemBuilds.append(build)
                } catch let error as NSError {
                    print("Could not save. \(error), \(error.userInfo)")
                }
            }
        }
    }
    
    func fetchAllData() {
        if let managedContext = self.managedContext {
            let fetchRequest =
                NSFetchRequest<NSManagedObject>(entityName: "Build")
            
            do {
                self.itemBuilds = try managedContext.fetch(fetchRequest)
            } catch let error as NSError {
                print("Could not fetch. \(error), \(error.userInfo)")
            }
        }
    }
}
