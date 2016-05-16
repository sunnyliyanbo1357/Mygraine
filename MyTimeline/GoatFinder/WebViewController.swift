//
//  WebViewController.swift
//  MyTimeline
//
//  Created by Yanbo Li on 5/16/16.
//  Copyright © 2016 Daniel Hauagge. All rights reserved.
//

import UIKit

class WebViewController: UIViewController {
    
    @IBOutlet var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = NSURL (string: "http://sunnyliyanbo1357.github.io/migrainedataviz/");
        let requestObj = NSURLRequest(URL: url!);
        webView.loadRequest(requestObj);
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
