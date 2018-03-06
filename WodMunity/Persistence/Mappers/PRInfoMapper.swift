//
//  PRInfoMapper.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation

enum PRInfoMapper: PersistenceMapper {

    typealias Model = PRInfo
    typealias PersistenceObject = RealmPRInfo

    static func model(from object: RealmPRInfo) -> PRInfo {
        return PRInfo(backSquat: object.backSquat,
                      frontSquat: object.frontSquat,
                      clean: object.clean,
                      cleanAndJerk: object.cleanAndJerk,
                      snatch: object.snatch,
                      pushPress: object.pushPress,
                      strictPress: object.strictPress,
                      deadlift: object.deadlift)
    }

    static func persistenceObject(from model: PRInfo) -> RealmPRInfo {
        return RealmPRInfo(backSquat: model.backSquat,
                           frontSquat: model.frontSquat,
                           clean: model.clean,
                           cleanAndJerk: model.cleanAndJerk,
                           snatch: model.snatch,
                           pushPress: model.pushPress,
                           strictPress: model.strictPress,
                           deadlift: model.deadlift)
    }
}
