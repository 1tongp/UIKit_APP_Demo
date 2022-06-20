//
//  ColorPickerDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct ColorPickerDemo: View {
    
    @State var selection:Color = Color.white
    
    var body: some View {
        ColorPicker("Color", selection: $selection)
    }
}

struct ColorPickerDemo_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerDemo()
    }
}
