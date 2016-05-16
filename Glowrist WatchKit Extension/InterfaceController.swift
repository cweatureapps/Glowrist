//
//  InterfaceController.swift
//  Glowrist WatchKit Extension
//
//  Created by Ken Ko on 15/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import WatchKit
import Foundation

class InterfaceController: WKInterfaceController {

    var settingsManager = SettingsManager()

    @IBOutlet var backgroundColorGroup: WKInterfaceGroup!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
        refreshBackground()
    }

    private func refreshBackground() {
        let glowColor: GlowColor
        if let savedColorString = settingsManager.getDefaultColorString() {
            glowColor = GlowColor(rawValue: savedColorString)!
        } else {
            glowColor = GlowColor.white
        }
        backgroundColorGroup.setBackgroundColor(glowColor.uiColor)
    }

    @IBAction func showSettings() {
        pushControllerWithName("changeColor", context: nil)
    }
}
