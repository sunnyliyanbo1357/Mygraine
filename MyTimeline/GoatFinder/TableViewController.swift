//
//  TableViewController.swift
//  GoatFinder
//
//  Created by Yanbo Li on 3/3/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit
import RealmSwift
import WatchConnectivity

class TableViewController: UITableViewController, WCSessionDelegate{

    var token : NotificationToken?
    var session: WCSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //realm token
        let realm = try! Realm()
        token = realm.addNotificationBlock({ (notification, realm) -> Void in
            self.tableView.reloadData()
        })
        
        //add navigation bar and add button
        let addButton = UIBarButtonItem(barButtonSystemItem: .Add, target: self, action: #selector(TableViewController.insertNewObject(_:)))
        self.navigationItem.rightBarButtonItem = addButton
        
        //connect Apple Watch
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
    
    // MARK: - Table view data source
    func session(session: WCSession, didReceiveMessage message: [String : AnyObject]) {
        // recieve message from watch
        // create a new migraine object
        
        //self.DateLabel.text = message["migraineDate"]! as? String
        //        let date = NSDate()
        //        self.DateLabel.text = String(date)
        //        self.LevelLabel.text = message["migraineLevel"]! as? String
        //        dispatch_async(dispatch_get_main_queue(), {
        //            self.messageLabel.text = message["b"]! as? String
        //        })
        dispatch_async(dispatch_get_main_queue(), {

        let activity = Activity()
        //let date = NSDate()
        
        let realm = try! Realm()
        try! realm.write {
            activity.name = "migraine"
            activity.level = (message["migraineLevel"]! as? String)!
            //goat.age = String(date)
            realm.add(activity, update: true)
        }
        
//        print("We have \(realm.objects(Activity).count) records")
        })
        dismissViewControllerAnimated(true, completion: nil)
        
    }


    func insertNewObject(sender: AnyObject) {
        // Push add button and redirect to the edit view
        //        objects.insert(NSDate(), atIndex: 0)
        //        let indexPath = NSIndexPath(forRow: 0, inSection: 0)
        //        self.tableView.insertRowsAtIndexPaths([indexPath], withRowAnimation: .Automatic)
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let nextViewController = storyBoard.instantiateViewControllerWithIdentifier("editView") as UIViewController
        self.presentViewController(nextViewController, animated:true, completion:nil)
    }
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        
        let realm = try! Realm()
        
        return realm.objects(Activity).count
    }

    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath) as! CellView
        
        let realm = try! Realm()
        let activities = realm.objects(Activity)
        let activity = activities[indexPath.row]
    
        cell.activity = activity
    
        return cell
    }
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let cell = sender as! CellView
        
        let vc = segue.destinationViewController as! ViewController
        vc.activity = cell.activity
    }
}
