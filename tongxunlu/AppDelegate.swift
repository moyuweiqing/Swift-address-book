//
//  AppDelegate.swift
//  hellow
//
//  Created by Apple on 2018/9/18.
//  Copyright © 2018年 nucle. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
       
    
//    let mainframe=UIScreen.main.bounds;
//    self.window=UIWindow(frame:mainframe);
//    self.window?.backgroundColor=UIColor.black;
//    //creatr a view
//    let aFrame=CGRect(x: 0, y: 0, width: 100, height: 100);
//    let aView=UIView(frame: aFrame);
//    aView.layer.cornerRadius=50;
//    aView.backgroundColor=UIColor.red;
//    self.window?.addSubview(aView);
//    //creatr a view
//    let bFrame=CGRect(x: 0, y: 100, width: 100, height: 200);
//    let bView=UIView(frame: bFrame);
//    bView.backgroundColor=UIColor.blue;
//    self.window?.addSubview(bView);
//    //display a string
//    let userNameFrame=CGRect(x: 0, y: 300, width: 100, height: 30);
//    let nameLabel1=UILabel(frame: userNameFrame);
//        nameLabel1.text="WELCOME";
//        nameLabel1.textColor=UIColor.blue;
//        self.window?.addSubview(nameLabel1);
//        //display a control
//    let confirmFrame=CGRect(x: 0, y: 330, width: 100, height: 30);
//        let confirmButton=UIButton(frame: confirmFrame);
//        
//        
   
        
     return true
    }
    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
       
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
        print("go out")
        
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
        print("go back")
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        NSLog("%@","go fore")
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }

    

}

