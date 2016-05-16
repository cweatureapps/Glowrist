//
//  ChangeColorInterfaceController.swift
//  Glowrist
//
//  Created by Ken Ko on 15/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import WatchKit
import Foundation

class ChangeColorInterfaceController: WKInterfaceController {

    private var settingsManager = SettingsManager()

    @IBOutlet var colorPreviewGroup: WKInterfaceGroup!
    @IBOutlet var colorPicker: WKInterfacePicker!
    @IBOutlet var colorLabel: WKInterfaceLabel!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let glowColor: GlowColor
        if let savedColorString = settingsManager.getDefaultColorString() {
            glowColor = GlowColor(rawValue: savedColorString)!
        } else {
            glowColor = GlowColor.white
        }
        colorLabel.setText(glowColor.rawValue)
        colorLabel.setTextColor(glowColor.uiColor)
        colorPreviewGroup.setBackgroundColor(glowColor.uiColor)
        setupPicker(selectedColor: glowColor)
    }

    private func setupPicker(selectedColor selectedColor: GlowColor) {
        var selectedIndex = 0
        var items: [WKPickerItem] = []
        GlowColor.all.enumerate().forEach { i, title in
            let item = WKPickerItem()
            item.title = title
            items.append(item)
            if title == selectedColor.rawValue {
                selectedIndex = i
            }
        }
        colorPicker.setItems(items)
        colorPicker.setSelectedItemIndex(selectedIndex)
    }

    @IBAction func pickerChanged(value: Int) {
        let glowColor = GlowColor(rawValue: GlowColor.all[value])!
        colorLabel.setText(glowColor.rawValue)
        colorLabel.setTextColor(glowColor.uiColor)
        colorPreviewGroup.setBackgroundColor(glowColor.uiColor)
        settingsManager.saveDefaultColorString(glowColor.rawValue)
    }
}
