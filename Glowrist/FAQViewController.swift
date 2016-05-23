//
//  FAQViewController.swift
//  Glowrist
//
//  Created by Ken Ko on 23/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import UIKit

class FAQViewController: UIViewController {
    @IBAction func appleSupportTapped(sender: AnyObject) {
        UIApplication.sharedApplication().openURL(NSURL(string: "https://support.apple.com/en-au/HT205536")!)
    }
}
