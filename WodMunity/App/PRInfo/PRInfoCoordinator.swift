//
//  PRIncoCoordinator.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2017/11/05.
//  Copyright © 2017 ecarrion. All rights reserved.
//

import Foundation
import UIKit

final class PRInfoCoordinator {

    private let tabBarController: UITabBarController
    private let appContext: AppContext

    init(tabBarController: UITabBarController, appContext: AppContext) {
        self.tabBarController = tabBarController
        self.appContext = appContext
    }

    func start() {

        var viewControllers = tabBarController.viewControllers ?? []
        viewControllers.append(PRInfoViewController())
        tabBarController.viewControllers = viewControllers
    }
}
