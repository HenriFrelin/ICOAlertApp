//
//  webviewViewController.swift
//  ICOAlert Portfolio
//
//  Created by Henri Frelin on 7/20/18.
//  Copyright © 2018 Henri Frelin. All rights reserved.
//

import UIKit

class siteViewController: UIViewController {
    
    
    @IBOutlet weak var webview: UIWebView!
    
    var url = "https://www.icoalert.com/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview.loadRequest(URLRequest(url: URL(string: url)!))
        
    }
}

