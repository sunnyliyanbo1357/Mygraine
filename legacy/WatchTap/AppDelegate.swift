//
//  AppDelegate.swift
//  WatchTap
//
//  Created by Yanbo Li on 3/2/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit
//import RealmSwift
import Alamofire

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //let viewController = self.window.rootViewController as UIViewController
    var vc = ViewController()
    
    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
        dispatch_async(dispatch_queue_create("background", nil)){
        while(self.vc.dataRecieved){
            print("Sending to server")
            let date = NSDate()
            //let migraine = Migraine()
            
        //        }
  
            //Alamofire.request(.GET, "http://mygraine-plempert.c9users.io:8080/api?intensity="+String(self.vc.migraine.level)+"&id=1000")
                
            Alamofire.request(.GET, "http://mygraine-plempert.c9users.io:8080/api?intensity=3")

        //
        //HTTP Request
        //        let url = NSURL(string: "https://nrvxyvgkup.localtunnel.me/api?date="+String(date)+"&intensity="+String(migraine.level)+"&id=1000")
        //
        //        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
        //            // print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        //            print("Request sent!")
        //        }
        //        task.resume()
        
                
            //NSLog("Sending from iPhone Date: "+String(date)+"Level: "+String(self.vc.migraine.level))
            print("Sending Request from iPhone")
            NSThread.sleepForTimeInterval(3)
            self.vc.dataRecieved = false
            }
        }
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

