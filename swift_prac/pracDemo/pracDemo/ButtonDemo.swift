//
//  ButtonDemo.swift
//  pracDemo
//
//  Created by Yitong Pei on 18/6/2022.
//

import SwiftUI

struct ButtonDemo: View{
    var body: some View{
//        Button("log in"){
//            print("=====")
//        }
        Button(action: {
            print("=====")
        }, label:{
            Text("Button")
        })
    }
}

struct ButtonDemo_Previews: PreviewProvider{
    static var previews: some View{
        Group {
            ButtonDemo()
                .previewInterfaceOrientation(.portrait)
            ButtonDemo()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
