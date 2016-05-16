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
    case red
    case orange
    case lightOrange = "light orange"
    case yellow
    case green
    case turquioise
    case lightBlue = "light blue"
    case blue
    case midnightBlue = "midnight blue"
    case purple
    case lavender
    case pink
    case vintageRose = "vintage rose"
    case walnut
    case stone
    case antiqueWhite = "antique white"

    var uiColor: UIColor {
        switch self {
        case white: return UIColor.whiteColor()
        case red: return UIColor(red: 227/255.0, green: 0, blue: 23/255.0, alpha: 1.0)
        case orange: return UIColor(red: 1, green: 80/255.0, blue: 33/255.0, alpha: 1.0)
        case lightOrange: return UIColor(red: 1, green: 150/255.0, blue: 0, alpha: 1.0)
        case yellow: return UIColor(red: 1, green: 240/255.0, blue: 0, alpha: 1.0)
        case green: return UIColor(red: 137/255.0, green: 229/255.0, blue: 0, alpha: 1.0)
        case turquioise: return UIColor(red: 156/255.0, green: 213/255.0, blue: 204/255.0, alpha: 1.0)
        case lightBlue: return UIColor(red: 101/255.0, green: 197/255.0, blue: 223/255.0, alpha: 1.0)
        case blue: return UIColor(red: 0, green: 180/255.0, blue: 1, alpha: 1.0)
        case midnightBlue: return UIColor(red: 93/255.0, green: 131/255.0, blue: 193/255.0, alpha: 1.0)
        case purple: return UIColor(red: 153/255.0, green: 119/255.0, blue: 250/255.0, alpha: 1.0)
        case lavender: return UIColor(red: 179/255.0, green: 154/255.0, blue: 166/255.0, alpha: 1.0)
        case pink: return UIColor(red: 1, green: 87/255.0, blue: 95/255.0, alpha: 1.0)
        case vintageRose: return UIColor(red: 246/255.0, green: 172/255.0, blue: 164/255.0, alpha: 1.0)
        case walnut: return UIColor(red: 177/255.0, green: 134/255.0, blue: 96/255.0, alpha: 1.0)
        case stone: return UIColor(red: 176/255.0, green: 153/255.0, blue: 126/255.0, alpha: 1.0)
        case antiqueWhite: return UIColor(red: 213/255.0, green: 182/255.0, blue: 146/255.0, alpha: 1.0)
        }
    }

    static var all: [String] {
        return [
            GlowColor.white.rawValue,
            GlowColor.red.rawValue,
            GlowColor.orange.rawValue,
            GlowColor.lightOrange.rawValue,
            GlowColor.yellow.rawValue,
            GlowColor.green.rawValue,
            GlowColor.turquioise.rawValue,
            GlowColor.lightBlue.rawValue,
            GlowColor.blue.rawValue,
            GlowColor.midnightBlue.rawValue,
            GlowColor.purple.rawValue,
            GlowColor.lavender.rawValue,
            GlowColor.pink.rawValue,
            GlowColor.vintageRose.rawValue,
            GlowColor.walnut.rawValue,
            GlowColor.stone.rawValue,
            GlowColor.antiqueWhite.rawValue
        ]
    }
}
