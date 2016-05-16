//
//  ScrollViewController.swift
//  WatchTap
//
//  Created by Yanbo Li on 3/6/16.
//  Copyright © 2016 Yanbo Li. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController,UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    
    var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        // 1
        let image = UIImage(named: "moves.jpg")!
        imageView = UIImageView(image: image)
        imageView.frame = CGRect(origin: CGPoint(x: 0, y: 0), size:image.size)
        scrollView.addSubview(imageView)
        
        // 2
        scrollView.contentSize = image.size
        
        // 3
//        var doubleTapRecognizer = UITapGestureRecognizer(target: self, action: "scrollViewDoubleTapped:")
//        doubleTapRecognizer.numberOfTapsRequired = 2
//        doubleTapRecognizer.numberOfTouchesRequired = 1
//        scrollView.addGestureRecognizer(doubleTapRecognizer)
        
        // 4
//        let scrollViewFrame = scrollView.frame
//        let scaleWidth = scrollViewFrame.size.width / scrollView.contentSize.width
//        let scaleHeight = scrollViewFrame.size.height / scrollView.contentSize.height
//        let minScale = min(scaleWidth, scaleHeight);
//        scrollView.minimumZoomScale = minScale;
//        
//        // 5
//        scrollView.maximumZoomScale = 1.0
//        scrollView.zoomScale = minScale;
        
        // 6
        //centerScrollViewContents()
    }
    
    func centerScrollViewContents() {
        let boundsSize = scrollView.bounds.size
        var contentsFrame = imageView.frame
        
        if contentsFrame.size.width < boundsSize.width {
            contentsFrame.origin.x = (boundsSize.width - contentsFrame.size.width) / 2.0
        } else {
            contentsFrame.origin.x = 0.0
        }
        
        if contentsFrame.size.height < boundsSize.height {
            contentsFrame.origin.y = (boundsSize.height - contentsFrame.size.height) / 2.0
        } else {
            contentsFrame.origin.y = 0.0
        }
        
        imageView.frame = contentsFrame
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

}
