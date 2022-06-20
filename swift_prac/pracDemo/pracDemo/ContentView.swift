//
//  ContentView.swift
//  pracDemo
//
//  Created by Yitong Pei on 17/6/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        (Text("2022 Warriors World Championship")
            .font(.largeTitle)
            .foregroundColor(Color.blue)
            .padding()
            .background(Color.yellow)) as! Text + Text(Image("figure.basketball"))
            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 13 Pro")
        ContentView()
            .previewDevice("iPad Pro (12.9-inch) (5th generation)")
            // display name at the top of the previwe window, others are same as the ".previewDevice"
            .previewDisplayName("iPad pro (12.9-inch)")
    }
}
