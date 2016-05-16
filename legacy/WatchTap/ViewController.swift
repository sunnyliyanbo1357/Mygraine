//
//  ViewController.swift
//  WatchTap
//
//  Created by Yanbo Li on 3/2/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit
import WatchConnectivity
//import RealmSwift
import Alamofire

class ViewController: UIViewController, WCSessionDelegate {
    
    //let appDelegate = (UIApplication.sharedApplication().delegate) as! AppDelegate
    
    var session: WCSession!
    var migraine = Migraine()
    var dataRecieved:Bool = false
    
    
    @IBOutlet weak var DateLabel: UILabel!
    @IBOutlet weak var LevelLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //self.myLabel.text = "I have 0 migraines today"
        if(WCSession.isSupported()){
            self.session = WCSession.defaultSession()
            self.session.delegate = self
            self.session.activateSession()
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendFromPhone(sender: AnyObject) {
        let date = NSDate()
        //send message to watch
        session.sendMessage(["Update":"Updated"], replyHandler: nil, errorHandler: nil)
        
        Alamofire.request(.GET, "http://mygraine-plempert.c9users.io:8080/api?intensity="+String(migraine.level)+"&id=1000")
        NSLog("Sending from iPhone Date: "+String(date)+"Level: "+String(migraine.level))
        
//        let realm = try! Realm()
//        try! realm.write{
//            migraine.date = self.DateLabel.text!
//            migraine.level = Int(LevelLabel.text!)!
//            realm.add(migraine)
        
//        }
//        print("We have \(realm.objects(Migraine).count) migraine records")
        
        //dismissViewControllerAnimated(true, completion: nil)
        
    }

    
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        //recieve message from watch
        //self.DateLabel.text = message["migraineDate"]! as? String
        let date = NSDate()
        self.DateLabel.text = String(date)
        self.LevelLabel.text = message["migraineLevel"]! as? String
        dispatch_async(dispatch_get_main_queue(), {
            self.LevelLabel.text = message["migraineLevel"]! as? String
        })
        migraine.level = Int(LevelLabel.text!)!
        
        dataRecieved = true

    }

}

