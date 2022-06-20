//
//  LabelDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct LabelDemo: View {
    var body: some View {
        Label("logo", image: "imageexample")
        Label("logo", systemImage: "person")
    }
}

struct LabelDemo_Previews: PreviewProvider {
    static var previews: some View {
        LabelDemo()
    }
}
