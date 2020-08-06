//
//  ChartRangeSeparator.swift
//  Charts
//
//  Created by Jhon Cruz on 29/07/20.
//

import Foundation
import CoreGraphics

/// The range separator is an additional feature for all Line, Bar and Scatter charts.
/// It allows the displaying of additional vertical lines along the x-axis to emphasize
/// certain ranges

open class ChartRangeSeparator: ComponentBase
{
    
    /// where the separator starts from
    @objc open var from: Double = Double.nan
    /// where the separator ends
    @objc open var to: Double = Double.nan
    /// the height of the separators
    @objc open var height: CGFloat = CGFloat(40.0)
    
    
    private var _lineWidth = CGFloat(2.0)
    @objc open var lineColor = NSUIColor(red: 237.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    @objc open var lineDashPhase = CGFloat(0.0)
    @objc open var lineDashLengths: [CGFloat]?
    
    private var _bottomLineWidth = CGFloat(2.0)
    @objc open var bottomLineColor = NSUIColor(red: 237.0/255.0, green: 91.0/255.0, blue: 91.0/255.0, alpha: 1.0)
    @objc open var bottomLineDashPhase = CGFloat(0.0)
    @objc open var bottomLineDashLengths: [CGFloat]?
    
    @objc open var valueTextColor = NSUIColor.black
    @objc open var valueFont = NSUIFont.systemFont(ofSize: 13.0)
    
    @objc open var drawLabelEnabled = true
    @objc open var label = ""
    
    @objc open var icon: NSUIImage?
    /// The offset the icon has on the x-axis
    @objc open var iconXOffset = CGFloat(0)
    
    /// The offset the icon has on the y-axis
    @objc open var iconYOffset = CGFloat(10)
    
    public override init()
    {
        super.init()
    }
    
    @objc public init(from: Double, to: Double, label: String)
    {
        self.from = from
        self.to = to
        self.label = label
    }
    
    @objc public init(from: Double, to: Double, label: String, height: CGFloat)
    {
        self.from = from
        self.to = to
        self.label = label
        self.height = height
    }
    
    @objc public init(from: Double, to: Double, label: String, icon: NSUIImage)
    {
        self.from = from
        self.to = to
        self.label = label
        self.icon = icon
    }
    
    /// set the line width of the chart (min = 0.2, max = 12); default 2
    @objc open var lineWidth: CGFloat
    {
        get
        {
            return _lineWidth
        }
        set
        {
            _lineWidth = newValue.clamped(to: 0.2...12)
        }
    }
    
    /// set the bottom line width of the chart (min = 0.2, max = 12); default 2
    @objc open var bottomLineWidth: CGFloat
    {
        get
        {
            return _bottomLineWidth
        }
        set
        {
            _bottomLineWidth = newValue.clamped(to: 0.2...12)
        }
    }
}
