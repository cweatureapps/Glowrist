//
//  ComplicationController.swift
//  Glowrist
//
//  Created by Ken Ko on 16/05/2016.
//  Copyright © 2016 Ken Ko. All rights reserved.
//

import WatchKit
import ClockKit

class ComplicationController: NSObject, CLKComplicationDataSource {

    private func templateForFamily(family: CLKComplicationFamily) -> CLKComplicationTemplate? {
        switch family {
        case .ModularSmall:
            let template = CLKComplicationTemplateModularSmallSimpleImage()
            template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "complication-modular")!)
            return template
        case .UtilitarianSmall:
            let template = CLKComplicationTemplateUtilitarianSmallFlat()
            template.textProvider = CLKSimpleTextProvider(text: "GLOW")
            template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "complication-utilitarian")!)
            return template
        case .UtilitarianLarge:
            let template = CLKComplicationTemplateUtilitarianLargeFlat()
            template.textProvider = CLKSimpleTextProvider(text: "GLOWRIST")
            template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "complication-utilitarian")!)
            return template
        case .CircularSmall:
            let template = CLKComplicationTemplateCircularSmallSimpleImage()
            template.imageProvider = CLKImageProvider(onePieceImage: UIImage(named: "complication-circular")!)
            return template
        default:
            return nil
        }
    }

     // MARK: Register

    func getPlaceholderTemplateForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTemplate?) -> Void) {
        handler(templateForFamily(complication.family))
    }

    // MARK: Provide Data

    func getCurrentTimelineEntryForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimelineEntry?) -> Void) {
        if let template = templateForFamily(complication.family) {
            handler(CLKComplicationTimelineEntry(date: NSDate(), complicationTemplate: template))
        } else {
            handler(nil)
        }
    }

    // MARK: Time Travel
    func getSupportedTimeTravelDirectionsForComplication(complication: CLKComplication, withHandler handler: (CLKComplicationTimeTravelDirections) -> Void) {
        handler(.None)
    }
}
