//
//  GlowColor.swift
//  Glowrist
//
//  Created by Ken Ko on 15/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import UIKit

enum GlowColor: String {
    case white
    case grey
    case green

    var uiColor: UIColor {
        switch self {
        case white: return UIColor.whiteColor()
        case grey: return UIColor.lightGrayColor()
        case green: return UIColor.greenColor()
        }
    }

    static var all: [String] {
        return [
            GlowColor.white.rawValue,
            GlowColor.grey.rawValue,
            GlowColor.green.rawValue
        ]
    }
}
