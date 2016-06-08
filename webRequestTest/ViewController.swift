//
//  ViewController.swift
//  webRequestTest
//
//  Created by Shannon Coward on 6/3/16.
//  Copyright © 2016 Shannon Coward. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {
    
    @IBOutlet weak var container: UIView!
    var webView: WKWebView!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        webView = WKWebView()
        container.addSubview(webView)
    }

    override func viewDidAppear(animated: Bool) {
        let frame = CGRectMake(0, 0, container.bounds.width, container.bounds.height)
        webView.frame = frame
        
        loadRequest("https://developer.apple.com/swift/blog/")
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func loadRequest(urlStr: String) {
        
        let url = NSURL(string: urlStr)!
        let request = NSURLRequest(URL: url)
        webView.loadRequest(request)
    }

    @IBAction func celebrityGossipButtonPressed(sender: AnyObject) {
        loadRequest("http://www.tmz.com/")
    }
    
    @IBAction func swiftButtonPressed(sender: AnyObject) {
        loadRequest("https://developer.apple.com/swift/blog/")
    }
    
    @IBAction func steak(sender: AnyObject) {
        loadRequest("http://steaks.com")
    }
}

