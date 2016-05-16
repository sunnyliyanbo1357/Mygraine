//
//  ViewController.swift
//  MyTimeline
//
//  Created by Yanbo Li on 3/3/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit
import RealmSwift
import WatchConnectivity
//import Foundation

class ViewController: UIViewController, UITextFieldDelegate, WCSessionDelegate{

    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var ageTextField: UITextField!
    
    @IBOutlet weak var saveButton: UIButton!
    
    var activity = Activity()
    var session: WCSession!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameTextField.delegate = self
        ageTextField.delegate = self

        nameTextField.text = activity.name
        ageTextField.text = "\(activity.level)"
        
        if(WCSession.isSupported()){
            self.session = WCSession.defaultSession()
            self.session.delegate = self
            self.session.activateSession()
        }
        
//        NSNotificationCenter.defaultCenter().addObserver(self, selector: "textChanged:", name: UITextFieldTextDidChangeNotification, object: nil)
//        saveButton.enabled = true
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: - Actions
    @IBAction func saveButtonClicked(sender: AnyObject) {

        let activity = Activity()
        
        let realm = try! Realm()
        try! realm.write {
            activity.name = nameTextField.text!
            activity.level = ageTextField.text!
            //activity.time = String(NSDate())
            //realm.add(activity, update: true)
        }
        print("We have \(realm.objects(Activity).count) records")
        
        //session.sendMessage(["update":"Timeline Updated!"], replyHandler: nil, errorHandler: nil)
 
        //navigationController?.popViewControllerAnimated(true)
        
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func cancelButtonClicked(sender: AnyObject) {
        dismissViewControllerAnimated(true, completion: nil)
        //navigationController?.popViewControllerAnimated(true)
    }
    
    // MARK: - Dismissing the keyboard
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        nameTextField.resignFirstResponder()
        ageTextField.resignFirstResponder()
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
    }
//    
//   func textChanged(sender: NSNotification) {
//    // Find out what the text field will be after adding the current edit
//        //let nametext = (nameTextField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
//        //let agetext = (ageTextField.text! as NSString).stringByReplacingCharactersInRange(range, withString: string)
//        
//    if nameTextField.hasText() && ageTextField.hasText() {
//        if let _ = Int(ageTextField.text!) {
//            // Text field converted to an Int
//        
//            saveButton.enabled = true
//        
//        } else {
//            // Text field is not an Int
//            saveButton.enabled = false
//        }} else {
//            // Text field is empty
//            saveButton.enabled = false
//        }
//    
//    
//    }
}

