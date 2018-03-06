//
//  User.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2018/03/05.
//  Copyright © 2018 ecarrion. All rights reserved.
//

import Foundation
import RealmSwift

final class RealmUser: Object {
    @objc dynamic var id: String = UUID().uuidString
    @objc dynamic var name: String?
    @objc dynamic var prInfo: RealmPRInfo?

    convenience init(id: String, name: String?, prInfo: RealmPRInfo) {
        self.init()
        self.id = id
        self.name = name
        self.prInfo = prInfo
    }

    @objc override class func primaryKey() -> String? {
        return "id"
    }
}
