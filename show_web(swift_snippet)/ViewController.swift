//
//  ViewController.swift
//  show_web(swift_snippet)
//
//  Created by tyoko on 2016/02/07.
//  Copyright © 2016年 tyoko. All rights reserved.
//

import UIKit
import SafariServices

class ViewController: UIViewController, SFSafariViewControllerDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //on tapping the button
    @IBAction func tapBtn(sender: AnyObject) {
        if let url = NSURL(string: "http://www.apple.com/jp/"){
            let vc = SFSafariViewController(URL: url,entersReaderIfAvailable: true)
            vc.delegate = self
            presentViewController(vc, animated: true, completion: nil)
        }
    }
    
    func safariViewControllerDidFinish(controller: SFSafariViewController) {
        print("close")
    }
}

