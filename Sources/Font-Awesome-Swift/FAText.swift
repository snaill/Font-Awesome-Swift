//
//  FAText.swift
//  Example_OSX
//
//  Created by snaill on 2020/1/4.
//  Copyright © 2020 snaill. All rights reserved.
//

import SwiftUI

struct FAText: View {
    
    var fa: FAType
    var size: CGFloat = 18
    
    var body: some View {
        Text(fa.text!).font(getfont(size: size))
    }
    
    func getfont(size: CGFloat) -> Font {
        
        FontLoader.loadFontIfNeeded()
        return Font.custom(FAStruct.FontName, size: size)
    }
}

struct FAText_Previews: PreviewProvider {
    static var previews: some View {
        FAText(fa: FAType.FAAdjust, size: 18)
    }
}
