//
//  FAIconOSX.swift
//  Font-Awesome-Swift
//
//  Created by Snaill on 2020/1/4.
//

import Cocoa

public extension NSControl {

    func FAFontSize() -> CGFloat {
        switch controlSize {
        case .mini:
            return 8
        default:
            return 15
        }
    }
}

public extension NSMenuItem {
    
    func setFAIcon(_ icon: FAType, controlSize: NSControl.ControlSize) {
    
        FontLoader.loadFontIfNeeded()
        let font = NSFont(name: FAStruct.FontName, size: controlSize == .mini ? 8 : 15)
        assert(font != nil, FAStruct.ErrorAnnounce)
        
        let attrStr = NSMutableAttributedString(string: icon.text!, attributes: [NSAttributedString.Key.font: font!])
        self.attributedTitle = attrStr
    }
}

public extension NSButton {
    
    /**
     To set an icon, use i.e. `buttonName.setFAIcon(FAType.FAGithub)`
     */
    func setFAIcon(_ icon: FAType) {
        
        FontLoader.loadFontIfNeeded()
        let font = NSFont(name: FAStruct.FontName, size: FAFontSize())
        assert(font != nil, FAStruct.ErrorAnnounce)
        
        self.title = icon.text!
        (self.cell as! NSButtonCell).font = font!
    }
}

public extension NSSegmentedControl {
    
    func setFAIcon(_ icon: FAType, forSegmentAtIndex segment: Int) {
        
        FontLoader.loadFontIfNeeded()
        let font = NSFont(name: FAStruct.FontName, size: FAFontSize())
        assert(font != nil, FAStruct.ErrorAnnounce)
        self.font = font
        setLabel(icon.text!, forSegment: segment)
    }
}
