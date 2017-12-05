//
//  AppDelegate.swift
//  Re-Created
//
//  Created by BWF on 2017/12/4.
//  Copyright © 2017年 BWF. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        self.window = UIWindow(frame:UIScreen.main.bounds)
        
        let tabbarcontroller = UITabBarController()
        let homecontroller = UINavigationController(rootViewController:HomeViewController())
        let usercontroller = UINavigationController(rootViewController:UserViewController())
        let makecontroller = UINavigationController(rootViewController:MakeViewController())
        let exhibitioncontroller = UINavigationController(rootViewController:ExhibitionViewController())
        
        tabbarcontroller.viewControllers = [homecontroller,exhibitioncontroller,makecontroller,usercontroller]
        
        let tabitem1 = UITabBarItem(title: "", image: UIImage(named:"Home"), selectedImage: UIImage(named:"Home-S"))
        let tabitem2 = UITabBarItem(title: "", image: UIImage(named:"User"), selectedImage: UIImage(named:"User-S"))
        let tabitem3 = UITabBarItem(title: "", image: UIImage(named:"Write"), selectedImage: UIImage(named:"Write-S"))
        let tabitem4 = UITabBarItem(title: "", image: UIImage(named:"Exhi"), selectedImage: UIImage(named:"Exhi-S"))
        
        homecontroller.tabBarItem = tabitem1
        usercontroller.tabBarItem = tabitem2
        makecontroller.tabBarItem = tabitem3
        exhibitioncontroller.tabBarItem = tabitem4
        tabbarcontroller.navigationController?.navigationBar.barTintColor = UIColor.white
        //tabbarcontroller.navigationController?.navigationBar.setBackgroundImage(UIImage(named:"recreate"), for: )
        
        tabbarcontroller.tabBar.isTranslucent = false
        tabbarcontroller.tabBar.tintColor = UIColor.yellow
        tabbarcontroller.tabBar.barTintColor = UIColor.black
        
        self.window?.rootViewController = tabbarcontroller
        self.window?.backgroundColor = UIColor.white
        self.window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

