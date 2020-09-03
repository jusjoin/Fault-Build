//
//  CellFactory.swift
//  Fault Build
//
//  Created by Zane on 8/15/20.
//  Copyright © 2020 JusDev Studios. All rights reserved.
//

import Foundation
import UIKit

class CellFactory{
    enum ReuseIdentifiers {
        static let basicItemCell = "BasicItemCell"
    }
    
    static func createBasicItemCell(gameItem: GameItem) -> FBTableViewCell {
        let cell = FBTableViewCell(style: .subtitle, reuseIdentifier: ReuseIdentifiers.basicItemCell)
        cell.imageView?.image = gameItem.getItemImage().resize(scaledToSize: CGSize(width: 50, height: 50))
        cell.imageView?.backgroundColor = gameItem.getItemImageBackgroundColor()
        cell.textLabel?.text = gameItem.name
        var itemInfo = ""
        for attribute in gameItem.attributes {
            itemInfo.append(attribute.uiDetails)
            if attribute.uiDetails != gameItem.attributes.last?.uiDetails {
                itemInfo.append("\n")
            }
        }
        
        cell.detailTextLabel?.numberOfLines = 0
        cell.detailTextLabel?.text = itemInfo
        cell.layer.borderColor = UIColor.black.cgColor
        cell.layer.borderWidth = 1
        cell.layer.cornerRadius = 8
        
        return cell
    }
    
    static func createItemDetailsCell(gameItem: GameItem) -> FBTableViewCell {
        let cell = FBTableViewCell(style: .value1, reuseIdentifier: "ItemDetailsCell")
        var itemInfo = ""
        for attribute in gameItem.attributes {
            itemInfo.append(attribute.uiDetails)
            if attribute.uiDetails != gameItem.attributes.last?.uiDetails {
                itemInfo.append("\n")
            }
        }
        cell.textLabel?.text = itemInfo
        cell.textLabel?.numberOfLines = 0
        let costLabel = "Cost:\n" + String(gameItem.cost)
        cell.detailTextLabel?.text = costLabel
        cell.detailTextLabel?.numberOfLines = 0
        
        return cell
    }
    
    static func createBannerImageViewCell(image: UIImage) -> FBTableViewCell {
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "BannerImageViewCell")
        
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
               
        let containerView = UIView()
        containerView.translatesAutoresizingMaskIntoConstraints = false;
        cell.contentView.addSubview(containerView)
        containerView.addSubview(imageView)
        
        if let superview = containerView.superview {
            let containerViewConstraints = [
                containerView.topAnchor.constraint(equalTo: superview.topAnchor),
                containerView.bottomAnchor.constraint(equalTo: superview.bottomAnchor),
                containerView.widthAnchor.constraint(equalTo: superview.widthAnchor),
                containerView.centerXAnchor.constraint(equalTo: superview.centerXAnchor)
            ]
            NSLayoutConstraint.activate(containerViewConstraints)
        }
        
        let imageViewConstraints = [
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor),
            imageView.centerXAnchor.constraint(equalTo: containerView.centerXAnchor),
            imageView.centerYAnchor.constraint(equalTo: containerView.centerYAnchor),
            imageView.heightAnchor.constraint(equalToConstant:
                image.getScaledHeightForWidth(width: cell.frame.width)),
            imageView.widthAnchor.constraint(equalTo: containerView.widthAnchor)
        ]
        NSLayoutConstraint.activate(imageViewConstraints)
        
        return cell
    }
    
    static func createCenterImageViewCell(image: UIImage) -> FBTableViewCell {
        let cell = FBTableViewCell(style: .default, reuseIdentifier: "CenterImageViewCell")
        
        return cell
    }
}
