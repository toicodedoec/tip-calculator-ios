//
//  TipUtils.swift
//  tippy
//
//  Created by john on 2/3/17.
//  Copyright © 2017 doannx. All rights reserved.
//

import Foundation

class TipUtils: NSObject {
    
    static let TIP_PERCENTAGE_VALUES = [15, 20, 25]
    
    enum TIP_PERCENTAGE_ENUM: Double {
        case MIN = 0.15
        case MID = 0.2
        case MAX = 0.25
    }
    
    /**
     Calculate total amount.
     @param billAmount Bill amount.
     @param tipPercent Tip percentage.
     @return Total amount.
     */
    static func calculateTotalAmount(billAmount:Double, tipPercent:Double) -> Double {
        return billAmount + calculateTipAmount(billAmount, tipPercent: tipPercent)
    }
    
    /**
     Calculate tip amount.
     @param billAmount Bill amount.
     @param tipPercent Tip percentage.
     @return Tip amount.
     */
    static func calculateTipAmount(billAmount:Double, tipPercent:Double) -> Double {
        return billAmount * tipPercent
    }
    
    /**
     Get tip value based on index.
     @param tipIndex.
     @return Tip value.
     */
    static func getTipValue(tipIndex:Int) -> Int {
        return TIP_PERCENTAGE_VALUES[tipIndex] ?? TIP_PERCENTAGE_VALUES[0]
    }
    
    /**
     Get tip index based on value.
     @param tipValue.
     @return Tip index.
     */
    static func getTipIndex(tipValue:Int) -> Int {
        return TIP_PERCENTAGE_VALUES.indexOf(tipValue)! ?? 0
    }
}
