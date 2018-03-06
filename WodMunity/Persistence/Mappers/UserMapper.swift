//
//  UserMapper.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation

enum UserMapper: PersistenceMapper {

    typealias Model = User
    typealias PersistenceObject = RealmUser

    static func model(from object: RealmUser) -> User {
        return User(id: object.id, name: object.name, prInfo: PRInfoMapper.model(from: object.prInfo))
    }

    static func persistenceObject(from model: User) -> RealmUser {
        return RealmUser(id: model.id, name: model.name, prInfo: PRInfoMapper.persistenceObject(from: model.prInfo))
    }
}
