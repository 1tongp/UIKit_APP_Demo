//
//  ToggleDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct ToggleDemo: View {
    
    @State var isOn:Bool = false
    var body: some View {
        Toggle("switch on", isOn:$isOn)
    }
}

struct ToggleDemo_Previews: PreviewProvider {
    static var previews: some View {
        ToggleDemo()
    }
}
