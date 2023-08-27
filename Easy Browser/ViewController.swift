//
//  ViewController.swift
//  Easy Browser
//
//  Created by MacBook Air on 27/08/2023.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKNavigationDelegate  {
    var webView: WKWebView!
    override func loadView() {
        webView = WKWebView()
        webView.navigationDelegate = self
        view = webView
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
            let url = URL(string: "https://www.amazon.eg")!
        webView.load(URLRequest(url: url))
        webView.allowsBackForwardNavigationGestures = true
    }


}

