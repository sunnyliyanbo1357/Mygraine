//
//  MapViewController.swift
//  MyTimeline
//
//  Created by Yanbo Li on 3/3/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit

import RealmSwift
import RealmMapView

class MapViewController: UIViewController {

    @IBOutlet weak var mapView: RealmMapView!
    
    var token : NotificationToken?
//    
//    var locationManager = CLLocationManager()
//    
//    func checkLocationAuthorizationStatus() {
//        if CLLocationManager.authorizationStatus() == .AuthorizedWhenInUse {
//            mapView.showsUserLocation = true
//        } else {
//            locationManager.requestWhenInUseAuthorization()
//        }
//    }
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        checkLocationAuthorizationStatus()
        
        let realm = try! Realm()
        token = realm.addNotificationBlock { (notification, realm) -> Void in
            self.mapView.refreshMapView()
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: - location manager to authorize user location for Maps app

}
