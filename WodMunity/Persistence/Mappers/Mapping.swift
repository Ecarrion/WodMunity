//
//  Mapping.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation
import RealmSwift

protocol PersistenceMapper {

    associatedtype Model
    associatedtype PersistenceObject: Object

    static func model(from object: PersistenceObject) -> Model
    static func persistenceObject(from model: Model) -> PersistenceObject
}
