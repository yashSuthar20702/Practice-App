//
//  WebVC.swift
//  temp
//
//  Created by Thinkwik 27 on 28/08/23.
//

import UIKit
import WebKit

class WebVC: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    let activityIndicator = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        activityIndicator.style = UIActivityIndicatorView.Style.medium
        activityIndicator.startAnimating()
        webView.navigationDelegate = self
        let loadURL = "https://developer.apple.com/"
        let url = URL(string: loadURL)!
        webView.load(URLRequest(url: url))
        activityIndicator.stopAnimating()
        webView.allowsBackForwardNavigationGestures = true
    }
    
    func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
        activityIndicator.startAnimating()
    }
    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
        activityIndicator.stopAnimating()
    }
    
}
