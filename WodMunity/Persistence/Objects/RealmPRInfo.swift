//
//  RealmPRInfo.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation
import RealmSwift

final class RealmPRInfo: Object {
    @objc dynamic var backSquat: Int = 0
    @objc dynamic var frontSquat: Int = 0
    @objc dynamic var clean: Int = 0
    @objc dynamic var cleanAndJerk: Int = 0
    @objc dynamic var snatch: Int = 0
    @objc dynamic var pushPress: Int = 0
    @objc dynamic var strictPress: Int = 0
    @objc dynamic var deadlift: Int = 0

    convenience init(backSquat: Int, frontSquat: Int, clean: Int, cleanAndJerk: Int, snatch: Int, pushPress: Int, strictPress: Int,
                     deadlift: Int) {
        self.init()
        self.backSquat = backSquat
        self.frontSquat = frontSquat
        self.clean = clean
        self.cleanAndJerk = cleanAndJerk
        self.snatch = snatch
        self.pushPress = pushPress
        self.strictPress = strictPress
        self.deadlift = deadlift
    }
}
