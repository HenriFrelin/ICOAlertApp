//
//  webviewViewController.swift
//  ICOAlert Portfolio
//
//  Created by Henri Frelin on 7/20/18.
//  Copyright © 2018 Henri Frelin. All rights reserved.
//

import UIKit

class educationViewController: UIViewController {
    
    
    @IBOutlet weak var webview: UIWebView!
    
    var url = "http://usblogs.pwc.com/emerging-technology/understanding-the-ico-infographic/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview.loadRequest(URLRequest(url: URL(string: url)!))
        
    }
}

