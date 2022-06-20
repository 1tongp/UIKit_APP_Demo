//
//  LinkDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct LinkDemo: View{
    var body: some View{
        Link("www.google.com", destination: URL(string: "https://www.google.com")!)
    }
}

struct LinkDemo_Previews: PreviewProvider{
    static var previews: some View{
        LinkDemo()
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
    }
}
