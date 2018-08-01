//
//  webviewViewController.swift
//  ICOAlert Portfolio
//
//  Created by Henri Frelin on 7/20/18.
//  Copyright © 2018 Henri Frelin. All rights reserved.
//

import UIKit

class projectViewController3: UIViewController {
    
    
    @IBOutlet weak var webview: UIWebView!
    
    var url = "https://tokpie.io/"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        webview.loadRequest(URLRequest(url: URL(string: url)!))
        
    }
}
