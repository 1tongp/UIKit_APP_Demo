//
//  ProgressViewDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct ProgressViewDemo: View {
    var body: some View {
        ProgressView("progress", value: 0.5, total: 1)
        ProgressView()
    }
}

struct ProgressViewDemo_Previews: PreviewProvider {
    static var previews: some View {
        ProgressViewDemo()
    }
}

