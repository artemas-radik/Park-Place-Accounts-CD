//
//  DataController.swift
//  Park Place Accounts CD
//
//  Created by Greydon O'Keefe on 9/26/22.
//

import CoreData
import Foundation

class DataController: ObservableObject {

    let container = NSPersistentContainer(name: "OrderItem")

    init() {
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }

}
