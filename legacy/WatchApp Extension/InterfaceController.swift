//
//  InterfaceController.swift
//  WatchApp Extension
//
//  Created by Yanbo Li on 3/5/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity
//import Alamofire


class InterfaceController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet var messageLabel: WKInterfaceLabel!
    
    @IBOutlet var levelLabel: WKInterfaceLabel!
    
    @IBOutlet var levelSlider: WKInterfaceSlider!
    
    
    var session:WCSession!
    var level:Int!
//    let locationManager = CLLocationManager()
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        if(WCSession.isSupported()){
            self.session = WCSession.defaultSession()
            self.session.delegate = self
            self.session.activateSession()
        }
    }
        
        // Get user current location 
        // Ask for Authorisation from the User.
//        self.locationManager.requestAlwaysAuthorization()
//        
//        // For use in foreground
//        self.locationManager.requestWhenInUseAuthorization()
//        
//        if CLLocationManager.locationServicesEnabled() {
//            locationManager.delegate = self
//            locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters
//            locationManager.startUpdatingLocation()
//        }
        
        
    
//    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {
//        var userLocation:CLLocation = locations[0] as! CLLocation
//        let long = userLocation.coordinate.longitude;
//        let lat = userLocation.coordinate.latitude;
//        //Do What ever you want with it
//    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    @IBAction func sendFromWatch() {
        let date = NSDate()
        if(WCSession.isSupported()){
            //session.sendMessage(["migraineDate": String(date)], replyHandler: nil, errorHandler: nil)
            session.sendMessage(["migraineLevel":String(level)], replyHandler: nil, errorHandler: nil)
        }
        NSLog("Sending from watch - Date: "+String(date)+"Level: "+String(level))
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        // Recieve message from iPhone
        self.messageLabel.setText(message["Update"]! as? String)
    }
    
    @IBAction func sliderDidChange(value: Int) {
        self.levelLabel.setText("Pain Level \(value)")
        self.level = value
    }
    
    
    

}
