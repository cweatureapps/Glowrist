//
//  SettingsManager.swift
//  Glowrist
//
//  Created by Ken Ko on 15/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import Foundation

class SettingsManager {
    private enum Keys {
        static let color = "color"
    }

    func saveDefaultColorString(colorString: String) {
        NSUserDefaults.standardUserDefaults().setObject(colorString, forKey: Keys.color)
    }

    func getDefaultColorString() -> String? {
        return NSUserDefaults.standardUserDefaults().objectForKey(Keys.color) as? String
    }

}