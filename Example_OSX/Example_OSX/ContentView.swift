//
//  ContentView.swift
//  Example_OSX
//
//  Created by snaill on 2020/1/4.
//  Copyright © 2020 snaill. All rights reserved.
//

import SwiftUI
import Font_Awesome_Swift

//extension Text {
//
//    init(fa: FAType) {
//        self.init(fa.text!)
//
//        FontLoader.loadFontIfNeeded()
//        let f = Font.custom(FAStruct.FontName, size: 18)
//        _ = font(f)
//    }
//}

struct ContentView: View {
    var body: some View {
        VStack {
            Text("this is a example.")
        FAText(FAType.FAAdjust).foregroundColor(Color.green)

            FAText(FAType.FAAdjust, size: 18).foregroundColor(Color.red)
            
//            Text(fa: FAType.FAAdjust)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
