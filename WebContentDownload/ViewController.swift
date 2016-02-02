//
//  ViewController.swift
//  WebContentDownload
//
//  Created by Soumyajit Sarkar on 2/1/16.
//  Copyright © 2016 Raul. All rights reserved.
//

import UIKit
var textVal = String()
class ViewController: UIViewController {
    
    @IBOutlet var textbox: UITextField!
    
    @IBAction func go(sender: AnyObject) {
        
}
    @IBOutlet var webView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // textVal = String(textbox.text!)
        if textVal == "" {
        
        let url = NSURL(string:"https://www.apple.com")!
        webView.loadRequest(NSURLRequest(URL: url))
        }
        else
        {
            webView.loadRequest(NSURLRequest(URL: NSURL(string: textVal)!))
            webView.reload()

        }
        /*
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data,response,error) -> Void in
            // Will happen when the task is completed
            if let urlContent = data {
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                // Sometimes it takes a long time for the queue to finish
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                     self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                })
            }
            else{
                // Show the error message
                
            }
        }
        
        task.resume()
*/
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

