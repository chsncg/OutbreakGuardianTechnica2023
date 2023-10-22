//
//  ViewController2.swift
//  OutbreakGuardian
//
//  Created by Stuti Chaurasia on 10/22/23.
//
import UIKit
import WebKit

class ViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var webView: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the Tableau dashboard URL
        if let url = URL(string: "https://public.tableau.com/views/Technica_2023/Dashboard3?:language=en-US&publish=yes&:display_count=n&:origin=viz_share_link") {
            let request = URLRequest(url: url)
            webView.navigationDelegate = self
            webView.load(request)
        }
    }
    
    
}
