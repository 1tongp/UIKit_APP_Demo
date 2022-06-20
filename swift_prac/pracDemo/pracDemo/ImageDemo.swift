//
//  ImageDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 17/6/2022.
//

import SwiftUI
struct ImageDemo: View{
    var body: some View{
        Image("imageexample")
            .resizable()
            .aspectRatio(contentMode: .fit)
        Image(systemName: "person")
            .resizable()// must put this feature as top position 
            .frame(width:100, height:100, alignment: .center)
    }
}

struct ImageDemo_Previews: PreviewProvider {
    static var previews: some View{
        ImageDemo()
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
    }
}
