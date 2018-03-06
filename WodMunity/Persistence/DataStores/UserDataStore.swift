//
//  UserDataStore.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation
import RealmSwift

final class UserDataStore {

    private let realm: Realm

    lazy var user: RealmUser = {
        let user = realm.objects(RealmUser.self).first

        guard let savedUser = user else {
            do {
                return try createUserIfNeeded()
            } catch {
                fatalError("Impossible to continue without an user")
            }
        }

        return savedUser

    }()

    init(configuration: Realm.Configuration) throws {
        self.realm = try Realm(configuration: configuration)
    }

    private func createUserIfNeeded() throws -> RealmUser {
        let newUser = RealmUser()
        try realm.write {
            realm.add(newUser)
        }
        return newUser
    }
}
