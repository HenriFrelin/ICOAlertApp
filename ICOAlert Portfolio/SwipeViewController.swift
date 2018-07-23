//
//  ViewController.swift
//  Tinder
//
//  Created by 刘任驰 on 11/20/17.
//  Copyright © 2017 lrc. All rights reserved.
//

import UIKit
class SwipeViewController: UIViewController {
    
    // show the current user ID in the swipe area
    var displayuserID = ""
    
    
    
    @IBOutlet var swipView: UIView!
    
    @IBOutlet var SignimgeView: UIImageView!
    //log out
    
    @IBAction func logoutbtn(_ sender: UIBarButtonItem) {
        //PFUser.logOut()
        
        
        self.performSegue(withIdentifier: "logoutsegue", sender: nil)
    }
    
    @IBOutlet var userAddress: UILabel!
    @IBOutlet var UserName: UILabel!
    @IBOutlet var swipeImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // taeget , send infomation to who ? - > self
        let gestrue = UIPanGestureRecognizer(target: self, action: #selector(wasDragged(gestureRecognizer: )))
        
        swipView.addGestureRecognizer(gestrue)
        
        updateImage()
        
        
        
        
        
        
        
    }
    
    @objc func wasDragged(gestureRecognizer: UIPanGestureRecognizer){
        
        let labelPoint =  gestureRecognizer.translation(in: view)
        
        swipView.center = CGPoint(x: view.bounds.width/2 + labelPoint.x , y:  view.bounds.height/2 + labelPoint.y)
        
        // set up the the positon and the CGAffineTransform
        let xFromCenter = view.bounds.width / 2 - swipView.center.x
        
        var rotation = CGAffineTransform(rotationAngle: xFromCenter/200)
        
        let scale = min(100/abs(xFromCenter), 1)
        
        var scaleAndRotated = rotation.scaledBy(x: scale, y: scale)
        
        swipView.transform = scaleAndRotated
        
        
        
        if gestureRecognizer.state == .ended{
            
            
            // deal with the accpeted and rejected
            var acceptedORrejected = ""
            
            if swipView.center.x < (view.bounds.width / 2 - 100) {
                print("no Interested")
                self.SignimgeView.isHidden = false
                SignimgeView.image = UIImage(named: "NopeSign")
                acceptedORrejected = "rejected"
            }
            if swipView.center.x > (view.bounds.width / 2 + 100) {
                print("Interested")
                self.SignimgeView.isHidden = false
                SignimgeView.image = UIImage(named: "LikeSign")
                acceptedORrejected = "accepted"
            }
            
            
            // resume the positon and the CGAffineTransform
            rotation = CGAffineTransform(rotationAngle: 0)
            
            scaleAndRotated = rotation.scaledBy(x: 1, y: 1)
            
            swipView.transform = scaleAndRotated
            
            swipView.center = CGPoint(x: view.bounds.width/2, y: view.bounds.height/2)
        }
        
    }
    
    // update the info in the parse server  to show in the swipe UI area
    func updateImage(){
        // update name and address
        
        self.SignimgeView.isHidden = true
 
  
    }

    
}

