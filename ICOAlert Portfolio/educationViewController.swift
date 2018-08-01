//
//  webviewViewController.swift
//  ICOAlert Portfolio
//
//  Created by Henri Frelin on 7/20/18.
//  Copyright © 2018 Henri Frelin. All rights reserved.
//

import UIKit
import WebKit

class educationViewController: UIViewController {
    
    
    @IBOutlet weak var webview: WKWebView!
    
    var url = "http://usblogs.pwc.com/emerging-technology/understanding-the-ico-infographic/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // loading website view, can be used as a universal webview template
        // be sure to change view controller name and if using storyboard, change title
        webview.load(URLRequest(url: URL(string: url)!))
    }
}

