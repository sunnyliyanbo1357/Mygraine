//
//  InterfaceController.swift
//  MyTimelineWatch Extension
//
//  Created by Yanbo Li on 4/12/16.
//  Copyright © 2016 Daniel Hauagge. All rights reserved.
//

import WatchKit
import Foundation
import WatchConnectivity

class InterfaceController: WKInterfaceController, WCSessionDelegate {

    @IBOutlet var messageLabel: WKInterfaceLabel!
    @IBOutlet var levelLabel: WKInterfaceLabel!
    @IBOutlet var levelSlider: WKInterfaceSlider!
    
    var session:WCSession!
    var level:Int!
    
    
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

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        // Recieve message from iPhone
        self.messageLabel.setText(message["Update"]! as? String)
    }
    
    @IBAction func sendFromWatch() {
        //let date = NSDate()
        let dateFormatter = NSDateFormatter()
        //the "M/d/yy, H:mm" is put together from the Symbol Table
        dateFormatter.dateFormat = "M/d/yy H:mm"
        let date = dateFormatter.stringFromDate(NSDate())
        
        if(WCSession.isSupported()){
            //session.sendMessage(["migraineDate": String(date)], replyHandler: nil, errorHandler: nil)
            session.sendMessage(["migraineLevel":String(level)], replyHandler: nil, errorHandler: nil)
        }
        //HTTP Request
        
        //        let url = NSURL(string: "http://www.mygraine.com/api?date="+String(date)+"&intensity="+String(level)+"&id=1000")
        //
        //        let task = NSURLSession.sharedSession().dataTaskWithURL(url!) {(data, response, error) in
        //            print(NSString(data: data!, encoding: NSUTF8StringEncoding))
        //        }
        
        //        task.resume()
        self.messageLabel.setText(String(date)+" Level "+String(level))
        NSLog("Date: "+String(date)+" Level: "+String(level))
        
    }
    @IBAction func sliderDidChange(value: Int) {
        self.levelLabel.setText("Pain Level \(value)")
        self.level = value
    }
    
}
