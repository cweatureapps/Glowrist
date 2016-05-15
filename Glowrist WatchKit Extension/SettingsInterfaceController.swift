//
//  SettingsInterfaceController.swift
//  Glowrist
//
//  Created by Ken Ko on 15/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import WatchKit
import Foundation


class SettingsInterfaceController: WKInterfaceController {

    private var settingsManager = SettingsManager()

    @IBOutlet var colorPreviewGroup: WKInterfaceGroup!
    @IBOutlet var colorPicker: WKInterfacePicker!

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        let glowColor: GlowColor
        if let savedColorString = settingsManager.getDefaultColorString() {
            glowColor = GlowColor(rawValue: savedColorString)!
        } else {
            glowColor = GlowColor.white
        }
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
        colorPreviewGroup.setBackgroundColor(glowColor.uiColor)
        settingsManager.saveDefaultColorString(glowColor.rawValue)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
