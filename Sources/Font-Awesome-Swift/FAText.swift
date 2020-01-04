//
//  FAText.swift
//  Example_OSX
//
//  Created by snaill on 2020/1/4.
//  Copyright © 2020 snaill. All rights reserved.
//

import SwiftUI

public struct FAText: View {
    
    var fa: FAType
    var size: CGFloat
    
    public init(_ fa: FAType) {
    
        self.fa = fa
        self.size = NSFont.systemFontSize
    }
    
    public init(_ fa: FAType, size: CGFloat) {
    
        self.fa = fa
        self.size = size
    }
    
    public var body: some View {
        Text(fa.text!).font(getfont(size: size))
    }
    
    func getfont(size: CGFloat) -> Font {
        
        FontLoader.loadFontIfNeeded()
        return Font.custom(FAStruct.FontName, size: size)
    }
}

struct FAText_Previews: PreviewProvider {
    static var previews: some View {
        FAText(FAType.FAAdjust, size: 18)
    }
}
