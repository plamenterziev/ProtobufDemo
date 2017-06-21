//
//  AppDelegate.swift
//  ProtobufDemo
//
//  Created by Plamen Terziev on 6/20/17.
//  Copyright © 2017 Mobishape. All rights reserved.
//

import UIKit
import SwiftProtobuf

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let documentsURL = try! FileManager.default.url(for: .documentDirectory,
                                                  in: .userDomainMask,
                                                  appropriateFor: nil,
                                                  create: false)
        
        var card1 = Card()
        card1.rank = .queen
        card1.s = .spades
        //card1.points = 20
        
        let card2 = Card.with {
            $0.rank = .ten
            $0.s = .clubs
        }
        
        let card1Data = try! card1.serializedData()
        print(card1Data.count)
        //try! card1Data.write(to: documentsURL.appendingPathComponent("data.bin"))
        
        let deck = Deck.with {
            $0.cards = [card1, card2]
        }
        
        let deckData = try! deck.serializedData()
        print(deckData.count)
        
        let deckJSON = try! deck.jsonString()
        print(deckJSON)
        
        let deserializedCard = try! Card(serializedData: try! Data(contentsOf: documentsURL.appendingPathComponent("data.bin")))
        print(deserializedCard)
        
        return true
    }
}






















