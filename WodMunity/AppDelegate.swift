//
//  AppDelegate.swift
//  WodMunity
//
//  Created by Ernesto Carrión on 2017/11/05.
//  Copyright © 2017 ecarrion. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    private var appCoordinator: AppCoordinator?

    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {

        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window

        appCoordinator = AppCoordinator(window: window, appContext: AppContext())
        appCoordinator?.start()
        return true
    }
}
