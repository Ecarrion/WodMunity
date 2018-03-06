//
//  DataStore.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation
import RealmSwift

final class DataStore {

    let userDataStore: UserDataStore

    init(configuration: Realm.Configuration = .defaultConfiguration) {
        do {
            self.userDataStore = try UserDataStore(configuration: configuration)
        } catch  {
            fatalError("A dataStore is needed to proceed")
        }
    }
}
