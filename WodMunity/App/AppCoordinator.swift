//
//  AppCoordinator.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2017/11/05.
//  Copyright © 2017 ecarrion. All rights reserved.
//

import Foundation
import UIKit

final class AppCoordinator {

    private let window: UIWindow
    private let appContext: AppContext

    private lazy var appTapBarController = AppTabBarController()
    private lazy var prInfoCoordinator: PRInfoCoordinator = {
        return PRInfoCoordinator(tabBarController: appTapBarController, appContext: appContext)
    }()

    init(window: UIWindow, appContext: AppContext) {
        self.window = window
        self.appContext = appContext
    }

    func start() {

        //Coordinators start order will be the tab order
        prInfoCoordinator.start()

        window.rootViewController = appTapBarController
        window.makeKeyAndVisible()
    }
}
